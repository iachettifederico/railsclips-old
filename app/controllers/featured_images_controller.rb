class FeaturedImagesController < ApplicationController
  before_action :set_featured_image, only: [:show, :edit, :update, :destroy]

  # GET /featured_images
  # GET /featured_images.json
  def index
    @featured_images = FeaturedImage.all
  end

  # GET /featured_images/1
  # GET /featured_images/1.json
  def show
  end

  # GET /featured_images/new
  def new
    @featured_image = FeaturedImage.new
  end

  # GET /featured_images/1/edit
  def edit
  end

  # POST /featured_images
  # POST /featured_images.json
  def create
    @featured_image = FeaturedImage.new(featured_image_params)

    respond_to do |format|
      if @featured_image.save
        format.html { redirect_to @featured_image, notice: 'Featured image was successfully created.' }
        format.json { render :show, status: :created, location: @featured_image }
      else
        format.html { render :new }
        format.json { render json: @featured_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /featured_images/1
  # PATCH/PUT /featured_images/1.json
  def update
    respond_to do |format|
      if @featured_image.update(featured_image_params)
        format.html { redirect_to @featured_image, notice: 'Featured image was successfully updated.' }
        format.json { render :show, status: :ok, location: @featured_image }
      else
        format.html { render :edit }
        format.json { render json: @featured_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /featured_images/1
  # DELETE /featured_images/1.json
  def destroy
    @featured_image.destroy
    respond_to do |format|
      format.html { redirect_to featured_images_url, notice: 'Featured image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_featured_image
      @featured_image = FeaturedImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def featured_image_params
      params.require(:featured_image).permit(:url, :post_id)
    end
end
