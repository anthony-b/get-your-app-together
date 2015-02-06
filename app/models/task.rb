class Task < ActiveRecord::Base
  attr_accessible :ID_org, :ID_product, :ID_task, :task_assignedto, :task_completed, :task_completedby, :task_createdby, :created_at, :task_description, :task_orgassignedto, :task_productassignedto, :task_title, :task_type, :product_id
  
  belongs_to :products
  has_one :product
  has_many :task_activites
end