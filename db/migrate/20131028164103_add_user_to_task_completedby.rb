class AddUserToTaskCompletedby < ActiveRecord::Migration
  def change
  add_column :tasks, :_completedby, :integer
  end
end
