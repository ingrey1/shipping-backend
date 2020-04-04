class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :orderID, null: false
      t.integer :customerID, foreign_key: true
      t.integer :employeeID, foreign_key: true
      t.datetime :orderDate
      t.datetime :requiredDate
      t.datetime :shippedDate
      t.integer :shipVia, foreign_key: true # references shipperID
      t.decimal :freight
      t.string :shipName
      t.string :shipAddress
      t.string :shipCity
      t.string :shipRegion
      t.string :shipPostalCode
      t.string :shipCountry
      
    end
  end
end

# [OrderID] [int] IDENTITY(1,1) NOT NULL,
# 	[CustomerID] [nchar](5) NOT NULL,
# 	[EmployeeID] [int] NULL,
# 	[OrderDate] [datetime] NULL,
# 	[RequiredDate] [datetime] NULL,
# 	[ShippedDate] [datetime] NULL,
# 	[ShipVia] [int] NULL,
# 	[Freight] [money] NULL,
# 	[ShipName] [nvarchar](40) NULL,
# 	[ShipAddress] [nvarchar](60) NULL,
# 	[ShipCity] [nvarchar](15) NULL,
# 	[ShipRegion] [nvarchar](15) NULL,
# 	[ShipPostalCode] [nvarchar](10) NULL,
# 	[ShipCountry] [nvarchar](15) NULL,
