# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_10_195429) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attribute_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "attributes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.bigint "attribute_type_id", null: false
    t.index ["attribute_type_id"], name: "index_attributes_on_attribute_type_id"
  end

  create_table "contact_channels", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods_order_details", force: :cascade do |t|
    t.integer "quantity"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods_order_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "goods_orders", force: :cascade do |t|
    t.bigint "contact_channel_id", null: false
    t.bigint "goods_order_type_id", null: false
    t.bigint "transportation_order_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_channel_id"], name: "index_goods_orders_on_contact_channel_id"
    t.index ["goods_order_type_id"], name: "index_goods_orders_on_goods_order_type_id"
    t.index ["transportation_order_id"], name: "index_goods_orders_on_transportation_order_id"
  end

  create_table "identifier_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identifiers", force: :cascade do |t|
    t.string "value"
    t.boolean "main_identifier", default: true
    t.bigint "identifier_type_id", null: false
    t.string "identifiable_type", null: false
    t.bigint "identifiable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identifiable_type", "identifiable_id"], name: "index_identifiers_on_identifiable"
    t.index ["identifier_type_id"], name: "index_identifiers_on_identifier_type_id"
  end

  create_table "location_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locations", force: :cascade do |t|
    t.bigint "containing_location_id"
    t.bigint "{:to_table=>:locations}_id"
    t.bigint "location_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.index ["containing_location_id"], name: "index_locations_on_containing_location_id"
    t.index ["location_type_id"], name: "index_locations_on_location_type_id"
    t.index ["{:to_table=>:locations}_id"], name: "index_locations_on_{:to_table=>:locations}_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.string "resource"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "_id"
    t.integer "user_id"
    t.string "topic"
    t.integer "application_id"
    t.integer "attempts"
    t.datetime "sent"
    t.datetime "received"
  end

  create_table "offer_details", force: :cascade do |t|
    t.bigint "product_id", null: false
    t.bigint "offer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_offer_details_on_offer_id"
    t.index ["product_id"], name: "index_offer_details_on_product_id"
  end

  create_table "offers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "people", force: :cascade do |t|
    t.bigint "person_type_id", null: false
    t.string "liable_type", null: false
    t.bigint "liable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.index ["liable_type", "liable_id"], name: "index_people_on_liable"
    t.index ["person_type_id"], name: "index_people_on_person_type_id"
  end

  create_table "person_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer "minimun_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "transportation_orders", force: :cascade do |t|
    t.bigint "transportation_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["transportation_type_id"], name: "index_transportation_orders_on_transportation_type_id"
  end

  create_table "transportation_types", force: :cascade do |t|
    t.string "description"
    t.integer "associated_costs"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "units", force: :cascade do |t|
    t.bigint "entry_order_id"
    t.bigint "exit_order_id"
    t.bigint "location_id", null: false
    t.integer "cost_of_unit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entry_order_id"], name: "index_units_on_entry_order_id"
    t.index ["exit_order_id"], name: "index_units_on_exit_order_id"
    t.index ["location_id"], name: "index_units_on_location_id"
  end

  add_foreign_key "attributes", "attribute_types"
  add_foreign_key "goods_orders", "contact_channels"
  add_foreign_key "goods_orders", "goods_order_types"
  add_foreign_key "goods_orders", "transportation_orders"
  add_foreign_key "identifiers", "identifier_types"
  add_foreign_key "locations", "location_types"
  add_foreign_key "offer_details", "offers"
  add_foreign_key "offer_details", "products"
  add_foreign_key "people", "person_types"
  add_foreign_key "transportation_orders", "transportation_types"
  add_foreign_key "units", "goods_orders", column: "entry_order_id"
  add_foreign_key "units", "goods_orders", column: "exit_order_id"
  add_foreign_key "units", "locations"
end
