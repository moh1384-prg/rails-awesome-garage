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

ActiveRecord::Schema[7.1].define(version: 2025_01_16_103243) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cars", force: :cascade do |t|
    t.string "Brand"
    t.string "Model"
    t.integer "Year"
    t.string "Fuel"
    t.bigint "owners_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owners_id"], name: "index_cars_on_owners_id"
  end

  create_table "favourites", force: :cascade do |t|
    t.bigint "cars_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cars_id"], name: "index_favourites_on_cars_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "Nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "Comment"
    t.integer "Rating"
    t.bigint "cars_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cars_id"], name: "index_reviews_on_cars_id"
  end

  add_foreign_key "cars", "owners", column: "owners_id"
  add_foreign_key "favourites", "cars", column: "cars_id"
  add_foreign_key "reviews", "cars", column: "cars_id"
end
