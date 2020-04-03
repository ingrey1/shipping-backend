class CreateShippers < ActiveRecord::Migration[6.0]
  def change
    create_table :shippers do |t|
      t.integer :shipperID, null: false
      t.string :companyName, null: false
      t.string :phone
      t.timestamps
    end
  end
end

# [ShipperID] [int] IDENTITY(1,1) NOT NULL,
# 	[CompanyName] [nvarchar](40) NOT NULL,
# 	[Phone] [nvarchar](24) NULL,