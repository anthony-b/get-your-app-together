class Organisation < ActiveRecord::Base
  attr_accessible :id, :org_addedby, :org_addresscity, :org_addressline1, :org_addressline2, :org_addressline3, :org_addresspostcode, :org_contactname, :created_at, :org_description, :org_name, :org_phonenumber, :org_website
  has_many :products
end