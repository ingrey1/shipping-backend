class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :customerID, null: false
      t.string :companyName, null: false
      t.string :contactName
      t.string :contactTitle
      t.string :address
      t.string :city
      t.string :region
      t.string :postalCode
      t.string :country
      t.string :phone
      t.string :fax
  
   
    end
  end
end
