class CreateTaskActivities < ActiveRecord::Migration
  def change
    create_table :task_activities do |t|
      t.string :task_activity_task_title
      t.string :task_activity_task_completedby
      t.string :task_activity_task_productassignedto
      t.integer :ID_task
      t.string :time_taken
      t.string :notes

      t.timestamps
    end
  end
end
