# == Schema Information
#
# Table name: posts
#
#  id             :integer          not null, primary key
#  title          :string
#  content        :text
#  user_id        :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  workflow_state :string
#  likes          :integer
#

class Post < ActiveRecord::Base
  belongs_to :user, touch: true
  has_one :featured_image
  include Workflow

  workflow do
    state :draft do
      event :done, :transitions_to => :for_review
    end
    state :for_review do
      event :accept, :transitions_to => :ready
      event :reject, :transitions_to => :draft
    end
    state :ready do
      event :publish, :transitions_to => :published
    end
    state :published
  end

  def accept
    puts "Post '#{id}' is ready to be published and needs approval"
  end

  def inspect
    "<Post title: #{title} state: #{workflow_state.inspect}>"
  end

  def likes
    sleep(0.1)
    #puts "TAKING SOME TIME!"
    read_attribute(:likes)
  end

  def like
    update_attributes(likes: likes + 1)
  end
end
