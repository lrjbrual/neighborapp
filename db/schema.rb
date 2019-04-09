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

ActiveRecord::Schema.define(version: 2019_04_09_054409) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "content"
    t.text "summary"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_blogs_on_user_id"
  end

  create_table "booking_items", force: :cascade do |t|
    t.bigint "event_id"
    t.bigint "course_id"
    t.integer "serving"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_booking_items_on_course_id"
    t.index ["event_id"], name: "index_booking_items_on_event_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "event_id"
    t.integer "no_person"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_bookings_on_event_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.bigint "event_id"
    t.string "title"
    t.text "description"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_courses_on_event_id"
  end

  create_table "event_costs", force: :cascade do |t|
    t.bigint "event_id"
    t.float "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_event_costs_on_event_id"
  end

  create_table "events", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.text "address"
    t.date "event_date"
    t.integer "no_person"
    t.datetime "cut_off"
    t.string "start_time"
    t.string "end_time"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "for_orders", force: :cascade do |t|
    t.bigint "user_id"
    t.string "title"
    t.text "description"
    t.float "price"
    t.string "status"
    t.integer "serving_size"
    t.string "type"
    t.boolean "is_flash"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_for_orders_on_user_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "for_order_id"
    t.integer "serving"
    t.float "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["for_order_id"], name: "index_order_items_on_for_order_id"
    t.index ["order_id"], name: "index_order_items_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.float "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.boolean "is_chef"
    t.boolean "is_customer"
    t.boolean "is_admin"
    t.string "firstname"
    t.string "lastname"
    t.text "address"
    t.string "zipcode"
    t.string "country"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "blogs", "users"
  add_foreign_key "booking_items", "courses"
  add_foreign_key "booking_items", "events"
  add_foreign_key "bookings", "events"
  add_foreign_key "bookings", "users"
  add_foreign_key "courses", "events"
  add_foreign_key "event_costs", "events"
  add_foreign_key "events", "users"
  add_foreign_key "for_orders", "users"
  add_foreign_key "order_items", "for_orders"
  add_foreign_key "order_items", "orders"
  add_foreign_key "orders", "users"
end
