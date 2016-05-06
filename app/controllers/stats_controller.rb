class StatsController < ApplicationController
  def posts
    csv = CsvPostsStats.new(Post.all).render
    send_data csv, filename: "posts.csv", type: 'text/csv', disposition: 'attachment'
  end
end
