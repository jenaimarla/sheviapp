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

ActiveRecord::Schema.define(version: 2020_12_04_160259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "payed", default: false
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.bigint "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "information"
    t.string "pre_order"
    t.integer "price_a1"
    t.integer "price_a2"
    t.string "format1"
    t.string "format2"
    t.index ["photo_id"], name: "index_images_on_photo_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "image_id"
    t.bigint "theme_id"
    t.bigint "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_items_on_cart_id"
    t.index ["image_id"], name: "index_items_on_image_id"
    t.index ["theme_id"], name: "index_items_on_theme_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "about"
    t.bigint "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_libraries_on_project_id"
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "order_photos", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "image_id"
    t.bigint "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "formats"
    t.index ["cart_id"], name: "index_order_photos_on_cart_id"
    t.index ["image_id"], name: "index_order_photos_on_image_id"
  end

  create_table "order_posters", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "theme_id"
    t.bigint "cart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cart_id"], name: "index_order_posters_on_cart_id"
    t.index ["theme_id"], name: "index_order_posters_on_theme_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
  end

  create_table "posters", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "project_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "details"
  end

  create_table "shops", force: :cascade do |t|
    t.bigint "image_id"
    t.bigint "theme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["image_id"], name: "index_shops_on_image_id"
    t.index ["theme_id"], name: "index_shops_on_theme_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "description"
    t.bigint "poster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "information"
    t.string "pre_order"
    t.integer "price_a1"
    t.integer "price_a2"
    t.index ["poster_id"], name: "index_themes_on_poster_id"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "images", "photos"
  add_foreign_key "items", "carts"
  add_foreign_key "items", "images"
  add_foreign_key "items", "themes"
  add_foreign_key "libraries", "projects"
  add_foreign_key "order_photos", "carts"
  add_foreign_key "order_photos", "images"
  add_foreign_key "order_posters", "carts"
  add_foreign_key "order_posters", "themes"
  add_foreign_key "shops", "images"
  add_foreign_key "shops", "themes"
  add_foreign_key "themes", "posters"
end
