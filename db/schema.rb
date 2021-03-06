# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_03_151343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "categoryName", null: false
    t.integer "categoryID", null: false
    t.text "description"
  end

  create_table "customer_group_thresholds", force: :cascade do |t|
    t.string "customerGroupName"
    t.decimal "rangeBottom"
    t.decimal "rangeTop"
  end

  create_table "customers", force: :cascade do |t|
    t.string "customerID", null: false
    t.string "companyName", null: false
    t.string "contactName"
    t.string "contactTitle"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "postalCode"
    t.string "country"
    t.string "phone"
    t.string "fax"
  end

  create_table "employees", force: :cascade do |t|
    t.string "employeeID", null: false
    t.string "lastName", null: false
    t.string "firstName", null: false
    t.string "title"
    t.string "titleOfCourtesy"
    t.datetime "birthDate"
    t.datetime "hireDate"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "postalCode"
    t.string "country"
    t.string "homePhone"
    t.string "extension"
    t.text "notes"
    t.integer "reportsTo"
    t.string "photoPath"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "orderID", null: false
    t.integer "productID", null: false
    t.decimal "unitPrice", null: false
    t.integer "quantity", null: false
    t.decimal "discount", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "orderID", null: false
    t.integer "customerID"
    t.integer "employeeID"
    t.datetime "orderDate"
    t.datetime "requiredDate"
    t.datetime "shippedDate"
    t.integer "shipVia"
    t.decimal "freight"
    t.string "shipName"
    t.string "shipAddress"
    t.string "shipCity"
    t.string "shipRegion"
    t.string "shipPostalCode"
    t.string "shipCountry"
  end

  create_table "products", force: :cascade do |t|
    t.string "productName", null: false
    t.integer "supplierID"
    t.integer "categoryID"
    t.integer "productID"
    t.string "quantityPerUnit"
    t.decimal "unitPrice"
    t.integer "unitsInStock"
    t.integer "unitsOnOrder"
    t.integer "reorderLevel"
    t.string "discontinued"
  end

  create_table "shippers", force: :cascade do |t|
    t.integer "shipperID", null: false
    t.string "companyName", null: false
    t.string "phone"
  end

  create_table "suppliers", force: :cascade do |t|
    t.integer "supplierID", null: false
    t.string "companyName", null: false
    t.string "contactName"
    t.string "contactTitle"
    t.string "address"
    t.string "city"
    t.string "region"
    t.string "postalCode"
    t.string "country"
    t.string "phone"
    t.string "fax"
    t.text "homePage"
  end

end
