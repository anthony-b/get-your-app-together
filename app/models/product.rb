class Product < ActiveRecord::Base
  attr_accessible :id, :product_configs, :product_createdby, :created_at, :product_description, :product_name, :product_orgID, :organisation_id, :product_value
  belongs_to :organisation
  has_many :tasks
  end