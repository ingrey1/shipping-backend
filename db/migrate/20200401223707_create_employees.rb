class CreateEmployees < ActiveRecord::Migration[6.0]
  def change
    create_table :employees do |t|
      t.string :employeeID, null: false
      t.string :lastName, null: false
      t.string :firstName, null: false
      t.string :title
      t.string :titleOfCourtesy
      t.datetime :birthDate
      t.datetime :hireDate
      t.string :address
      t.string :city
      t.string :region
      t.string :postalCode
      t.string :country
      t.string :homePhone
      t.string :extension
      t.text :notes
      t.integer :reportsTo
      t.string :photoPath
      t.timestamps
    end
  end
end

# [EmployeeID] [int] IDENTITY(1,1) NOT NULL,
# 	[LastName] [nvarchar](20) NOT NULL,
# 	[FirstName] [nvarchar](10) NOT NULL,
# 	[Title] [nvarchar](30) NULL,
# 	[TitleOfCourtesy] [nvarchar](25) NULL,
# 	[BirthDate] [datetime] NULL,
# 	[HireDate] [datetime] NULL,
# 	[Address] [nvarchar](60) NULL,
# 	[City] [nvarchar](15) NULL,
# 	[Region] [nvarchar](15) NULL,
# 	[PostalCode] [nvarchar](10) NULL,
# 	[Country] [nvarchar](15) NULL,
# 	[HomePhone] [nvarchar](24) NULL,
# 	[Extension] [nvarchar](4) NULL,
# 	[Notes] [ntext] NULL,
# 	[ReportsTo] [int] NULL,
# 	[PhotoPath] [nvarchar](255) NULL,
