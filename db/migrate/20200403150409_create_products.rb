class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :productName, null: false
      t.integer :supplierID, foreign_key: true
      t.integer :categoryID, foreign_key: true
      t.integer :productID
      t.string :quantityPerUnit
      t.decimal :unitPrice
      t.integer :unitsInStock
      t.integer :unitsOnOrder
      t.integer :reorderLevel
      t.string :discontinued


     
    end
  end
end
# [ProductID] [int] IDENTITY(1,1) NOT NULL,
# 	[ProductName] [nvarchar](40) NOT NULL,
# 	[SupplierID] [int] NULL,
# 	[CategoryID] [int] NULL,
# 	[QuantityPerUnit] [nvarchar](20) NULL,
# 	[UnitPrice] [money] NULL,
# 	[UnitsInStock] [smallint] NULL,
# 	[UnitsOnOrder] [smallint] NULL,
# 	[ReorderLevel] [smallint] NULL,
# 	[Discontinued] [bit] NOT NULL,
