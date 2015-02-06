class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_description
      t.string :product_configs
      t.string :product_createdby
      t.string :product_orgID
	  t.integer :product_value

      t.timestamps
    end
  end
end
