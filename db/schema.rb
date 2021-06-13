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

ActiveRecord::Schema.define(version: 2021_06_13_013148) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "skin_color"
    t.string "hair_color"
    t.integer "height"
    t.string "eye_color"
    t.integer "mass"
    t.string "birth_year"
    t.boolean "favorite", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters_films", id: false, force: :cascade do |t|
    t.bigint "character_id", null: false
    t.bigint "film_id", null: false
    t.index ["character_id", "film_id"], name: "index_characters_films_on_character_id_and_film_id"
    t.index ["film_id", "character_id"], name: "index_characters_films_on_film_id_and_character_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "producer"
    t.string "title"
    t.integer "episode"
    t.string "director"
    t.string "release_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
