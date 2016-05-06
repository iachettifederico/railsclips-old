class ImportsController < ApplicationController
  def posts
    path = params["csv"].path
    text = File.open(path).read
    PostsCsvImporter.new(text).import

    redirect_to :back, flash: { notice: "Posts has been imported" }
  end

  def posts_demo_csv
    csv = PostsCsvImporter.demo
    send_data csv, filename: "posts.csv", type: 'text/csv', disposition: 'attachment'
  end
end
