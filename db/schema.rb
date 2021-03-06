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

ActiveRecord::Schema.define(version: 20180413215406) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "user_type"
    t.bigint "user_id"
    t.string "photo_type"
    t.bigint "photo_id"
    t.string "location_type"
    t.bigint "location_id"
    t.index ["location_type", "location_id"], name: "index_comments_on_location_type_and_location_id"
    t.index ["photo_type", "photo_id"], name: "index_comments_on_photo_type_and_photo_id"
    t.index ["user_type", "user_id"], name: "index_comments_on_user_type_and_user_id"
  end

  create_table "hikes", force: :cascade do |t|
    t.string "name"
    t.date "date"
    t.bigint "location_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_hikes_on_location_id"
    t.index ["user_id"], name: "index_hikes_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "state"
    t.string "location_name"
    t.string "location_address"
    t.string "nearest_city"
    t.string "google_map_link"
    t.string "level"
    t.string "length"
    t.string "main_picture_file_name"
    t.string "main_picture_content_type"
    t.integer "main_picture_file_size"
    t.datetime "main_picture_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.text "description"
    t.bigint "user_id"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_file_name"
    t.string "image_content_type"
    t.integer "image_file_size"
    t.datetime "image_updated_at"
    t.index ["location_id"], name: "index_photos_on_location_id"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "signups", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "hike_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hike_id"], name: "index_signups_on_hike_id"
    t.index ["user_id"], name: "index_signups_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "hometown"
    t.string "level"
    t.string "profile_picture_file_name"
    t.string "profile_picture_content_type"
    t.integer "profile_picture_file_size"
    t.datetime "profile_picture_updated_at"
    t.string "contact"
    t.string "facebook_url"
    t.string "instagram_url"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hikes", "locations"
  add_foreign_key "hikes", "users"
  add_foreign_key "photos", "locations"
  add_foreign_key "photos", "users"
  add_foreign_key "signups", "hikes"
  add_foreign_key "signups", "users"
end
