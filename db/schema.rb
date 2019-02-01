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

ActiveRecord::Schema.define(version: 2019_02_01_182253) do

  create_table "dures", force: :cascade do |t|
    t.string "name"
    t.string "activity"
    t.string "address"
    t.integer "effective"
    t.text "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "risks", force: :cascade do |t|
    t.string "name"
    t.integer "workunit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["workunit_id"], name: "index_risks_on_workunit_id"
  end

  create_table "underrisks", force: :cascade do |t|
    t.string "name"
    t.string "frequency_score"
    t.string "gravity_score"
    t.string "mastery_score"
    t.string "mesure_prevention_to_predict"
    t.string "existing_mesure_prevention"
    t.string "date"
    t.string "responsable"
    t.integer "risk_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["risk_id"], name: "index_underrisks_on_risk_id"
  end

  create_table "work_units", force: :cascade do |t|
    t.string "name"
    t.integer "duer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["duer_id"], name: "index_work_units_on_duer_id"
  end

end
