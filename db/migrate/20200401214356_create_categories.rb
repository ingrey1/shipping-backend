class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :categoryName, null: false
      t.integer :categoryID, null: false
      t.text :description
     
    end
  end
end
