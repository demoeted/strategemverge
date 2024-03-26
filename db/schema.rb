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

ActiveRecord::Schema[7.1].define(version: 2024_03_26_192028) do
  create_table "cases", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "type"
    t.string "color"
    t.string "psu"
    t.string "side_panel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keyboards", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "style"
    t.string "switches"
    t.string "backlit_color"
    t.boolean "tenkeyless"
    t.string "connection_type"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "motherboards", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "socket"
    t.string "form_factor"
    t.integer "max_memory"
    t.integer "memory_slots"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orderproducts", force: :cascade do |t|
    t.decimal "price"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date "date_purchased"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "powersupplies", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "type"
    t.string "efficienty"
    t.integer "wattage"
    t.string "modular"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rams", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "speed"
    t.decimal "price_per_gb"
    t.string "color"
    t.decimal "first_word_latency"
    t.integer "cas_latency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "videocards", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "chipset"
    t.integer "memory"
    t.integer "core_clock"
    t.integer "boost_clock"
    t.string "color"
    t.integer "length"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
