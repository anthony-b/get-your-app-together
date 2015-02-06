class AddOrganisationidToProducts < ActiveRecord::Migration
  def change
    add_column :products, :organisation_id, :integer 
	add_column :tasks, :product_id, :integer
  end
end
