class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.integer :supplierID, null: false
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
      t.text :homePage
      t.timestamps
    end
  end
end
# [SupplierID] [int] IDENTITY(1,1) NOT NULL,
# 	[CompanyName] [nvarchar](40) NOT NULL,
# 	[ContactName] [nvarchar](30) NULL,
# 	[ContactTitle] [nvarchar](30) NULL,
# 	[Address] [nvarchar](60) NULL,
# 	[City] [nvarchar](15) NULL,
# 	[Region] [nvarchar](15) NULL,
# 	[PostalCode] [nvarchar](10) NULL,
# 	[Country] [nvarchar](15) NULL,
# 	[Phone] [nvarchar](24) NULL,
# 	[Fax] [nvarchar](24) NULL,
# 	[HomePage] [ntext] NULL,