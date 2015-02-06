class TaskActivity < ActiveRecord::Base
  attr_accessible :id, :task_activity_task_title, :task_activity_task_completedby, :notes, :time_taken, :task_activity_task_productassignedto
  
   belongs_to :task
   has_one :task
   
end