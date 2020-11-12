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

ActiveRecord::Schema.define(version: 2020_11_12_160331) do

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.integer "photo_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_images_on_photo_id"
  end

  create_table "libraries", force: :cascade do |t|
    t.string "about"
    t.integer "project_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["project_id"], name: "index_libraries_on_project_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
  end

  create_table "themes", force: :cascade do |t|
    t.string "description"
    t.integer "poster_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["poster_id"], name: "index_themes_on_poster_id"
  end

end
