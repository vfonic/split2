# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170106122416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_themes", force: :cascade do |t|
    t.integer  "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "active_themes", ["theme_id"], name: "index_active_themes_on_theme_id", using: :btree

  create_table "assets", force: :cascade do |t|
    t.integer  "theme_id"
    t.string   "content_type"
    t.string   "public_url"
    t.integer  "size"
    t.string   "key"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "file"
  end

  add_index "assets", ["key"], name: "index_assets_on_key", using: :btree
  add_index "assets", ["theme_id"], name: "index_assets_on_theme_id", using: :btree

  create_table "billing_addresses", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "company"
    t.string   "city"
    t.string   "province"
    t.string   "province_code"
    t.string   "zip"
    t.string   "country"
    t.string   "country_code"
    t.string   "phone"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "billing_addresses", ["customer_id"], name: "index_billing_addresses_on_customer_id", using: :btree

  create_table "carts", force: :cascade do |t|
    t.text     "note"
    t.integer  "original_total_price"
    t.integer  "total_price"
    t.integer  "total_weight"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "collection_products", force: :cascade do |t|
    t.integer "collection_id"
    t.integer "product_id"
  end

  add_index "collection_products", ["collection_id"], name: "index_collection_products_on_collection_id", using: :btree
  add_index "collection_products", ["product_id"], name: "index_collection_products_on_product_id", using: :btree

  create_table "collections", force: :cascade do |t|
    t.string   "default_sort_by"
    t.text     "description"
    t.datetime "published_at"
    t.string   "title"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "customers", force: :cascade do |t|
    t.boolean  "accepts_marketing"
    t.integer  "default_address_id"
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "customers", ["default_address_id"], name: "index_customers_on_default_address_id", using: :btree
  add_index "customers", ["email"], name: "index_customers_on_email", using: :btree

  create_table "discounts", force: :cascade do |t|
    t.string   "code"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "discounts", ["code"], name: "index_discounts_on_code", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "billing_address_id"
    t.datetime "cancelled_at"
    t.integer  "customer_id"
    t.string   "financial_status"
    t.string   "fulfillment_status"
    t.text     "note"
    t.integer  "order_number"
    t.integer  "shipping_address_id"
    t.integer  "shipping_price"
    t.integer  "subtotal_price"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "orders", ["billing_address_id"], name: "index_orders_on_billing_address_id", using: :btree
  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id", using: :btree
  add_index "orders", ["order_number"], name: "index_orders_on_order_number", using: :btree
  add_index "orders", ["shipping_address_id"], name: "index_orders_on_shipping_address_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.integer  "compare_at_price_max"
    t.integer  "compare_at_price_min"
    t.text     "description"
    t.string   "title"
    t.string   "vendor"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "shipping_addresses", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address1"
    t.string   "address2"
    t.string   "company"
    t.string   "city"
    t.string   "province"
    t.string   "province_code"
    t.string   "zip"
    t.string   "country"
    t.string   "country_code"
    t.string   "phone"
    t.integer  "customer_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "shipping_addresses", ["customer_id"], name: "index_shipping_addresses_on_customer_id", using: :btree

  create_table "themes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "variants", force: :cascade do |t|
    t.string   "barcode"
    t.integer  "compare_at_price"
    t.boolean  "incoming"
    t.string   "inventory_management"
    t.string   "inventory_policy"
    t.integer  "inventory_quantity"
    t.datetime "next_incoming_date"
    t.string   "option1"
    t.string   "option2"
    t.string   "option3"
    t.integer  "price"
    t.boolean  "requires_shipping"
    t.string   "sku"
    t.boolean  "taxable"
    t.string   "title"
    t.string   "weight"
    t.string   "weight_unit"
    t.integer  "product_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "variants", ["product_id"], name: "index_variants_on_product_id", using: :btree

end
