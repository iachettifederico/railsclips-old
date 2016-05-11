class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy, :like]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    allow!(authorizator.can?(:create_post)) do
      @post = Post.new
    end
  end

  def create
    allow!(authorizator.can?(:create_post)) do
      @post = Post.new(post_params)

      if @post.save
        Resque.enqueue(Notify, @post.id)
        redirect_to @post, notice: 'Post was successfully created.'
      else
        render :new
      end
    end
  end

  def destroy
    allow!(authorizator.can?(:create_post)) do
      @post.destroy
      redirect_to posts_url, notice: 'Post was successfully destroyed.'
    end
  end

  def edit
    allow!(authorizator.can?(:modify_post))
  end

  def update
    allow!(authorizator.can?(:modify_post)) do
      if @post.update(post_params)
        redirect_to @post, notice: 'Post was successfully updated.'
      else
        render :edit
      end
    end
  end

  def like
    @post.like
    redirect_to :back, notice: "Liked!"
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :user_id)
  end

  def most_popular_posts
    @most_popular_posts ||= Post.order("likes DESC").take(10)
  end
  helper_method :most_popular_posts
end
