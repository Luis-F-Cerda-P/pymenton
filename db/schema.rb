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

ActiveRecord::Schema[7.1].define(version: 2024_03_05_175616) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "applicability_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_mechanism_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contact_mechanisms", force: :cascade do |t|
    t.bigint "contact_mechanism_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_mechanism_type_id"], name: "index_contact_mechanisms_on_contact_mechanism_type_id"
  end

  create_table "container_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "containers", force: :cascade do |t|
    t.string "description"
    t.bigint "facility_id"
    t.bigint "parent_container_id"
    t.bigint "container_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["container_type_id"], name: "index_containers_on_container_type_id"
    t.index ["facility_id"], name: "index_containers_on_facility_id"
    t.index ["parent_container_id"], name: "index_containers_on_parent_container_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feature_applicabilities", force: :cascade do |t|
    t.bigint "feature_id", null: false
    t.bigint "good_id", null: false
    t.bigint "applicability_type_id", null: false
    t.datetime "from_date"
    t.datetime "thru_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["applicability_type_id"], name: "index_feature_applicabilities_on_applicability_type_id"
    t.index ["feature_id"], name: "index_feature_applicabilities_on_feature_id"
    t.index ["good_id"], name: "index_feature_applicabilities_on_good_id"
  end

  create_table "feature_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "features", force: :cascade do |t|
    t.string "description"
    t.bigint "feature_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_type_id"], name: "index_features_on_feature_type_id"
  end

  create_table "good_identifications", force: :cascade do |t|
    t.bigint "good_id", null: false
    t.bigint "identification_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["good_id"], name: "index_good_identifications_on_good_id"
    t.index ["identification_id"], name: "index_good_identifications_on_identification_id"
  end

  create_table "goods", force: :cascade do |t|
    t.string "description"
    t.datetime "introduction_date"
    t.datetime "sales_discontinuation_date"
    t.bigint "manufacturer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturer_id"], name: "index_goods_on_manufacturer_id"
  end

  create_table "identification_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identifications", force: :cascade do |t|
    t.string "value"
    t.bigint "identification_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["identification_type_id"], name: "index_identifications_on_identification_type_id"
  end

  create_table "inventory_items", force: :cascade do |t|
    t.bigint "good_id", null: false
    t.bigint "facility_id"
    t.bigint "container_id"
    t.bigint "lot_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["container_id"], name: "index_inventory_items_on_container_id"
    t.index ["facility_id"], name: "index_inventory_items_on_facility_id"
    t.index ["good_id"], name: "index_inventory_items_on_good_id"
    t.index ["lot_id"], name: "index_inventory_items_on_lot_id"
  end

  create_table "item_issuances", force: :cascade do |t|
    t.bigint "picklist_item_id", null: false
    t.bigint "shipment_item_id", null: false
    t.bigint "inventory_item_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_item_id"], name: "index_item_issuances_on_inventory_item_id"
    t.index ["picklist_item_id"], name: "index_item_issuances_on_picklist_item_id"
    t.index ["shipment_item_id"], name: "index_item_issuances_on_shipment_item_id"
  end

  create_table "lots", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "resource"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_contact_mechanisms", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "contact_mechanism_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_mechanism_id"], name: "index_order_contact_mechanisms_on_contact_mechanism_id"
    t.index ["order_id"], name: "index_order_contact_mechanisms_on_order_id"
  end

  create_table "order_item_shipment_items", force: :cascade do |t|
    t.bigint "shipment_item_id", null: false
    t.bigint "order_item_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_item_id"], name: "index_order_item_shipment_items_on_order_item_id"
    t.index ["shipment_item_id"], name: "index_order_item_shipment_items_on_shipment_item_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.bigint "good_id", null: false
    t.bigint "feature_applicability_id", null: false
    t.integer "quantity"
    t.decimal "amount_paid_per_unit", precision: 15, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_applicability_id"], name: "index_order_items_on_feature_applicability_id"
    t.index ["good_id"], name: "index_order_items_on_good_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "order_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "order_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_type_id"], name: "index_orders_on_order_type_id"
  end

  create_table "packaging_contents", force: :cascade do |t|
    t.bigint "shipment_item_id", null: false
    t.bigint "shipment_package_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shipment_item_id"], name: "index_packaging_contents_on_shipment_item_id"
    t.index ["shipment_package_id"], name: "index_packaging_contents_on_shipment_package_id"
  end

  create_table "parties", force: :cascade do |t|
    t.string "description"
    t.bigint "party_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["party_type_id"], name: "index_parties_on_party_type_id"
  end

  create_table "party_contact_mechanisms", force: :cascade do |t|
    t.bigint "contact_mechanism_id", null: false
    t.bigint "party_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contact_mechanism_id"], name: "index_party_contact_mechanisms_on_contact_mechanism_id"
    t.index ["party_id"], name: "index_party_contact_mechanisms_on_party_id"
  end

  create_table "party_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "picklist_items", force: :cascade do |t|
    t.bigint "picklist_id", null: false
    t.bigint "inventory_item_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_item_id"], name: "index_picklist_items_on_inventory_item_id"
    t.index ["picklist_id"], name: "index_picklist_items_on_picklist_id"
  end

  create_table "picklists", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_components", force: :cascade do |t|
    t.bigint "good_id", null: false
    t.bigint "composing_good_id", null: false
    t.datetime "date_from"
    t.datetime "date_thru"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["composing_good_id"], name: "index_product_components_on_composing_good_id"
    t.index ["good_id"], name: "index_product_components_on_good_id"
  end

  create_table "reorder_guidelines", force: :cascade do |t|
    t.bigint "good_id", null: false
    t.bigint "facility_id", null: false
    t.datetime "from_date"
    t.datetime "thru_date"
    t.integer "reorder_quantity"
    t.integer "reorder_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["facility_id"], name: "index_reorder_guidelines_on_facility_id"
    t.index ["good_id"], name: "index_reorder_guidelines_on_good_id"
  end

  create_table "shipment_items", force: :cascade do |t|
    t.bigint "good_id", null: false
    t.bigint "shipment_id", null: false
    t.bigint "feature_applicability_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["feature_applicability_id"], name: "index_shipment_items_on_feature_applicability_id"
    t.index ["good_id"], name: "index_shipment_items_on_good_id"
    t.index ["shipment_id"], name: "index_shipment_items_on_shipment_id"
  end

  create_table "shipment_packages", force: :cascade do |t|
    t.bigint "shipment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shipment_id"], name: "index_shipment_packages_on_shipment_id"
  end

  create_table "shipment_receipts", force: :cascade do |t|
    t.bigint "order_item_id", null: false
    t.bigint "inventory_item_id", null: false
    t.bigint "shipment_id", null: false
    t.bigint "shipment_package_id", null: false
    t.integer "quantity_accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inventory_item_id"], name: "index_shipment_receipts_on_inventory_item_id"
    t.index ["order_item_id"], name: "index_shipment_receipts_on_order_item_id"
    t.index ["shipment_id"], name: "index_shipment_receipts_on_shipment_id"
    t.index ["shipment_package_id"], name: "index_shipment_receipts_on_shipment_package_id"
  end

  create_table "shipment_status_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipment_statuses", force: :cascade do |t|
    t.bigint "shipment_id", null: false
    t.bigint "shipment_status_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shipment_id"], name: "index_shipment_statuses_on_shipment_id"
    t.index ["shipment_status_type_id"], name: "index_shipment_statuses_on_shipment_status_type_id"
  end

  create_table "shipment_types", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.bigint "shipment_type_id", null: false
    t.decimal "cost", precision: 15, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shipment_type_id"], name: "index_shipments_on_shipment_type_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "contact_mechanisms", "contact_mechanism_types"
  add_foreign_key "containers", "container_types"
  add_foreign_key "containers", "containers", column: "parent_container_id"
  add_foreign_key "containers", "facilities"
  add_foreign_key "feature_applicabilities", "applicability_types"
  add_foreign_key "feature_applicabilities", "features"
  add_foreign_key "feature_applicabilities", "goods"
  add_foreign_key "features", "feature_types"
  add_foreign_key "good_identifications", "goods"
  add_foreign_key "good_identifications", "identifications"
  add_foreign_key "goods", "parties", column: "manufacturer_id"
  add_foreign_key "identifications", "identification_types"
  add_foreign_key "inventory_items", "containers"
  add_foreign_key "inventory_items", "facilities"
  add_foreign_key "inventory_items", "goods"
  add_foreign_key "inventory_items", "lots"
  add_foreign_key "item_issuances", "inventory_items"
  add_foreign_key "item_issuances", "picklist_items"
  add_foreign_key "item_issuances", "shipment_items"
  add_foreign_key "order_contact_mechanisms", "contact_mechanisms"
  add_foreign_key "order_contact_mechanisms", "orders"
  add_foreign_key "order_item_shipment_items", "order_items"
  add_foreign_key "order_item_shipment_items", "shipment_items"
  add_foreign_key "order_items", "feature_applicabilities"
  add_foreign_key "order_items", "goods"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "order_types"
  add_foreign_key "packaging_contents", "shipment_items"
  add_foreign_key "packaging_contents", "shipment_packages"
  add_foreign_key "parties", "party_types"
  add_foreign_key "party_contact_mechanisms", "contact_mechanisms"
  add_foreign_key "party_contact_mechanisms", "parties"
  add_foreign_key "picklist_items", "inventory_items"
  add_foreign_key "picklist_items", "picklists"
  add_foreign_key "product_components", "goods"
  add_foreign_key "product_components", "goods", column: "composing_good_id"
  add_foreign_key "reorder_guidelines", "facilities"
  add_foreign_key "reorder_guidelines", "goods"
  add_foreign_key "shipment_items", "feature_applicabilities"
  add_foreign_key "shipment_items", "goods"
  add_foreign_key "shipment_items", "shipments"
  add_foreign_key "shipment_packages", "shipments"
  add_foreign_key "shipment_receipts", "inventory_items"
  add_foreign_key "shipment_receipts", "order_items"
  add_foreign_key "shipment_receipts", "shipment_packages"
  add_foreign_key "shipment_receipts", "shipments"
  add_foreign_key "shipment_statuses", "shipment_status_types"
  add_foreign_key "shipment_statuses", "shipments"
  add_foreign_key "shipments", "shipment_types"
end
