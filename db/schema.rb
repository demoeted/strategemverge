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
  create_table "case_fans", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "size"
    t.string "color"
    t.integer "rpm"
    t.boolean "pwm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

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

  create_table "computer_monitors", force: :cascade do |t|
    t.string "name"
    t.decimal "screen_size"
    t.string "resolution"
    t.integer "refresh_rate"
    t.decimal "response_time"
    t.string "panel_type"
    t.string "aspect_ratio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cpus", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.decimal "core_clock"
    t.decimal "boost_clock"
    t.string "integrated_graphics"
    t.boolean "smt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone_number"
    t.string "address"
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

  create_table "mice", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "tracking_method"
    t.string "connection_type"
    t.integer "max_dpi"
    t.string "hand_orientation"
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

  create_table "optical_drives", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "bd"
    t.integer "dvd"
    t.integer "cd"
    t.integer "bd_write"
    t.integer "dvd_write"
    t.integer "cd_write"
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

  create_table "speakers", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.decimal "configuration"
    t.decimal "wattage"
    t.string "frequency"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "thermal_pastes", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.decimal "amount"
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

  create_table "webcams", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.string "resolutions"
    t.string "connection"
    t.string "focus_type"
    t.string "os"
    t.decimal "fov"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
