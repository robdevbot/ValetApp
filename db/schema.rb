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

ActiveRecord::Schema.define(version: 2022_11_28_062017) do

  create_table "attendants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "check_ins", force: :cascade do |t|
    t.datetime "time", precision: 6
    t.string "attendant"
    t.string "parking_spot"
    t.string "string"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "vehicle"
    t.index ["attendant"], name: "index_check_ins_on_attendant"
    t.index ["vehicle"], name: "index_check_ins_on_vehicle"
  end

  create_table "check_outs", force: :cascade do |t|
    t.datetime "time", precision: 6
    t.string "attendant"
    t.string "parking_spot"
    t.string "string"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["attendant"], name: "index_check_outs_on_attendant"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "parking_spots"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "vin"
    t.string "year"
    t.string "make"
    t.string "model"
    t.string "trim"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "checkedin"
  end

end
