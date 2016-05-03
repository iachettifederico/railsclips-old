class Post < ActiveRecord::Base
  belongs_to :user
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
end
