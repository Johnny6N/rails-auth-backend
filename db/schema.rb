# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_16_230655) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ceus", force: :cascade do |t|
    t.string "title"
    t.string "number"
    t.float "hours"
    t.string "state"
    t.string "instructor_name"
    t.string "provider_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "f_name"
    t.string "l_name"
    t.string "birth_month"
    t.string "birth_day"
    t.string "birth_year"
    t.string "license"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "maps", force: :cascade do |t|
    t.bigint "client_id", null: false
    t.bigint "usstate_id", null: false
    t.bigint "ceu_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ceu_id"], name: "index_maps_on_ceu_id"
    t.index ["client_id"], name: "index_maps_on_client_id"
    t.index ["usstate_id"], name: "index_maps_on_usstate_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "usstates", force: :cascade do |t|
    t.string "name"
    t.float "hours"
    t.string "periodicity"
    t.string "conditions"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "maps", "ceus"
  add_foreign_key "maps", "clients"
  add_foreign_key "maps", "usstates"
end
