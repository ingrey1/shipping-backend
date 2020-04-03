# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.destroy_all
Product.destroy_all
Shipper.destroy_all
Supplier.destroy_all
Order.destroy_all
OrderDetail.destroy_all
Employee.destroy_all
Customer.destroy_all
CustomerGroupThreshold.destroy_all


# INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (1, N'Beverages', N'Soft drinks, coffees, teas, beers, and ales')
# INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (2, N'Condiments', N'Sweet and savory sauces, relishes, spreads, and seasonings')
# INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (3, N'Confections', N'Desserts, candies, and sweet breads')
# INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (4, N'Dairy Products', N'Cheeses')
# INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (5, N'Grains/Cereals', N'Breads, crackers, pasta, and cereal')
# INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (6, N'Meat/Poultry', N'Prepared meats')
# INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (7, N'Produce', N'Dried fruit and bean curd')
# INSERT [dbo].[Categories] ([CategoryID], [CategoryName], [Description]) VALUES (8, N'Seafood', N'Seaweed and fish')
Category.create!(categoryID: 1, categoryName: "Beverages", description: "Soft drinks, coffees, teas, beers, and ales")
Category.create!(categoryID: 2, categoryName: "Condiments", description: "Sweet and savory sauces, relishes, spreads, and seasonings")
Category.create!(categoryID: 3, categoryName: "Confections", description: "Desserts, candies, and sweet breads")
Category.create!(categoryID: 4, categoryName: "Dairy Products", description: "Cheeses")
Category.create!(categoryID: 5, categoryName: "Grains/Cereals", description: "Breads, crackers, pasta, and cereal")
Category.create!(categoryID: 6, categoryName: "Meat/Poultry", description: "Prepared meats")
Category.create!(categoryID: 7, categoryName: "Produce", description: "Dried fruit and bean curd")
Category.create!(categoryID: 8, categoryName: "Seafood", description: "Seaweed and fish")