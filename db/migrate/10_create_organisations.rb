class CreateOrganisations < ActiveRecord::Migration
  def change
    create_table :organisations do |t|
      t.string :org_name
      t.string :org_description
      t.string :org_addressline1
      t.string :org_addressline2
      t.string :org_addressline3
      t.string :org_addresscity
      t.string :org_addresspostcode
      t.string :org_phonenumber
      t.string :org_contactname
      t.string :org_website
      t.string :org_addedby

      t.timestamps
    end
  end
end
