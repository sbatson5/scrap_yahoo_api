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

ActiveRecord::Schema.define(version: 20181208161403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "managers", force: :cascade do |t|
    t.string "real_name", null: false
    t.string "current_nickname", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matchups", force: :cascade do |t|
    t.decimal "score", null: false
    t.boolean "victory", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "season_id"
    t.bigint "manager_id"
    t.bigint "opponent_id"
    t.integer "week", default: 1, null: false
    t.index ["manager_id"], name: "index_matchups_on_manager_id"
    t.index ["opponent_id"], name: "index_matchups_on_opponent_id"
    t.index ["season_id"], name: "index_matchups_on_season_id"
  end

  create_table "seasons", force: :cascade do |t|
    t.integer "year", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "first_id"
    t.bigint "second_id"
    t.bigint "third_id"
    t.bigint "fourth_id"
    t.index ["first_id"], name: "index_seasons_on_first_id"
    t.index ["fourth_id"], name: "index_seasons_on_fourth_id"
    t.index ["second_id"], name: "index_seasons_on_second_id"
    t.index ["third_id"], name: "index_seasons_on_third_id"
  end

  add_foreign_key "matchups", "managers"
  add_foreign_key "matchups", "managers", column: "opponent_id"
  add_foreign_key "matchups", "seasons"
  add_foreign_key "seasons", "managers", column: "first_id"
  add_foreign_key "seasons", "managers", column: "fourth_id"
  add_foreign_key "seasons", "managers", column: "second_id"
  add_foreign_key "seasons", "managers", column: "third_id"
end
