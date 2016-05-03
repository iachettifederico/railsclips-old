class AddWorkflowStateToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :workflow_state, :string
  end
end
