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

require 'rails_helper'

RSpec.describe Post, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
