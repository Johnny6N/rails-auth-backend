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

ActiveRecord::Schema.define(version: 2020_04_14_043941) do

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
    t.bigint "clients_id", null: false
    t.bigint "usstates_id", null: false
    t.bigint "ceus_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ceus_id"], name: "index_maps_on_ceus_id"
    t.index ["clients_id"], name: "index_maps_on_clients_id"
    t.index ["usstates_id"], name: "index_maps_on_usstates_id"
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

  add_foreign_key "maps", "ceus", column: "ceus_id"
  add_foreign_key "maps", "clients", column: "clients_id"
  add_foreign_key "maps", "usstates", column: "usstates_id"
end
