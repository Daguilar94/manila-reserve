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

ActiveRecord::Schema.define(version: 2018_05_06_204627) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coworkers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "coworkers_tours", id: false, force: :cascade do |t|
    t.bigint "tour_id"
    t.bigint "coworker_id"
    t.index ["coworker_id"], name: "index_coworkers_tours_on_coworker_id"
    t.index ["tour_id"], name: "index_coworkers_tours_on_tour_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "reviewable_type"
    t.bigint "reviewable_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["reviewable_type", "reviewable_id"], name: "index_reviews_on_reviewable_type_and_reviewable_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "name"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "tours_users", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "tour_id"
    t.index ["tour_id"], name: "index_tours_users_on_tour_id"
    t.index ["user_id"], name: "index_tours_users_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastName"
    t.string "personalId"
    t.integer "age"
    t.integer "type"
    t.integer "role"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "coworkers_tours", "coworkers", on_delete: :cascade
  add_foreign_key "coworkers_tours", "tours", on_delete: :cascade
  add_foreign_key "reviews", "users"
  add_foreign_key "tours_users", "tours", on_delete: :cascade
  add_foreign_key "tours_users", "users", on_delete: :cascade
end
