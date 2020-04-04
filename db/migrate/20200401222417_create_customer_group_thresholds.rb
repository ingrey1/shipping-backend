class CreateCustomerGroupThresholds < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_group_thresholds do |t|
      t.string :customerGroupName
      t.decimal :rangeBottom
      t.decimal :rangeTop
    
    end
  end
end
