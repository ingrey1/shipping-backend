class CreateOrderDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :order_details do |t|
      t.integer :orderID, foreign_key: true, null: false
      t.integer :productID, foreign_key: true, null: false
      t.decimal :unitPrice, null: false
      t.integer :quantity, null: false
      t.decimal :discount, null: false
    
    end
  end
end

# [OrderID] [int] NOT NULL,
# 	[ProductID] [int] NOT NULL,
# 	[UnitPrice] [money] NOT NULL,
# 	[Quantity] [smallint] NOT NULL,
# 	[Discount] [real] NOT NULL,