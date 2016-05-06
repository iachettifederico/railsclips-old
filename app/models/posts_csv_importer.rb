require "csv"

class PostsCsvImporter
  attr_reader :csv

  def initialize(csv)
    @csv = csv
  end

  def import
    CSV.parse(csv, headers: true, header_converters: :symbol ) do |row|
      author_email = row.delete(:author_email).last
      author = User.find_or_create_by(email: author_email)

      workflow_state = row.delete(:state).last

      post_attributes = row.to_h
      post_attributes[:user] = author
      post_attributes[:workflow_state] = workflow_state

      Post.create(post_attributes)
    end
  end

  def self.demo
    <<~CSV
      "title","content","author email","state"
      "Bogus title","Bogus content","bogus@example.com","draft"
    CSV
  end
end
