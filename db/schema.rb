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

ActiveRecord::Schema.define(version: 2021_05_01_151354) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.integer "winning_points"
    t.integer "loosing_points"
    t.integer "presence_points"
    t.string "event_type"
    t.boolean "closed"
    t.integer "draw_points"
    t.datetime "beginning_date"
    t.datetime "end_date"
    t.bigint "club_id", null: false
    t.index ["club_id"], name: "index_events_on_club_id"
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "court_number"
    t.integer "score_firstteam"
    t.integer "score_secondteam"
    t.integer "player1"
    t.integer "player2"
    t.integer "player3"
    t.integer "player4"
    t.integer "player5"
    t.integer "player6"
  end

  create_table "series", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.datetime "date"
    t.integer "number_of_courts"
    t.string "players_presents"
    t.integer "duration"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "role"
    t.integer "total_shots"
    t.string "succesful_shots"
  end

  add_foreign_key "events", "clubs"
end
