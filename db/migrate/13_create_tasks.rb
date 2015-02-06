class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_title
      t.string :task_description
      t.boolean :task_completed
      t.string :task_completedby
      t.string :task_assignedto
      t.string :task_type
      t.string :task_createdby
      t.string :task_productassignedto
      t.string :task_orgassignedto
      t.string :ID_org
      t.string :ID_product
      t.integer :ID_task
      t.string :activity_id

      t.timestamps
    end
  end
end
