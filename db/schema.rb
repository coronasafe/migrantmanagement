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

ActiveRecord::Schema.define(version: 2020_03_28_122708) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "districts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "migrants", force: :cascade do |t|
    t.string "name"
    t.string "employer_name"
    t.text "local_residence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "employer_phone"
    t.boolean "has_labour_department_reached"
    t.boolean "can_speak_local_language"
    t.string "aadhar_id"
    t.bigint "state_id"
    t.bigint "district_id"
    t.bigint "panchayat_id"
    t.boolean "has_beds"
    t.boolean "has_mattresses"
    t.boolean "has_toilet"
    t.boolean "has_general_cleanliness"
    t.integer "number_people_sharing_room"
    t.boolean "has_cooking_facilities"
    t.boolean "need_food"
    t.boolean "need_water"
    t.boolean "need_medicines"
    t.boolean "need_doctor"
    t.string "feedback_comment"
    t.index ["district_id"], name: "index_migrants_on_district_id"
    t.index ["panchayat_id"], name: "index_migrants_on_panchayat_id"
    t.index ["state_id"], name: "index_migrants_on_state_id"
  end

  create_table "panchayats", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "migrants", "districts"
  add_foreign_key "migrants", "panchayats"
  add_foreign_key "migrants", "states"
end
