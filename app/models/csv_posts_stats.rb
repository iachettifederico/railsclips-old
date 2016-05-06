require "csv"
class CsvPostsStats
  attr_reader :posts
  def initialize(posts)
    @posts = posts
  end

  def render
    CSV.generate do |csv|
      csv << ["Title", "Content", "User", "Created at", "Updated at", "Workflow State"]
      posts.each do |post|
        csv << [
                post.title,
                post.content,
                post.user.email,
                post.created_at,
                post.updated_at,
                post.workflow_state,
               ]
      end
    end
  end
end
