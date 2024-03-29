# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  role       :string
#

class User < ActiveRecord::Base
  has_many :posts
  after_save do
    posts.each {|post| post.touch}
  end

  def admin?
    role == "admin"
  end

  def editor?
    role == "editor"
  end

  def normal
    role.nil?
  end

  def to_s
    email
  end
end
