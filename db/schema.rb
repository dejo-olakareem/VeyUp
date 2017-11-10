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

ActiveRecord::Schema.define(version: 20171110003156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "text"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picture"
    t.integer "likes"
  end

  create_table "businesses", force: :cascade do |t|
    t.integer "rating"
    t.integer "price"
    t.integer "phone"
    t.string "name"
    t.integer "review_count"
    t.string "image_url"
    t.string "city"
    t.string "country"
    t.string "address"
    t.string "state"
    t.integer "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "term"
  end

  create_table "questions", force: :cascade do |t|
    t.text "text"
    t.integer "survey_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.integer "likes"
  end

  create_table "reservations", force: :cascade do |t|
    t.datetime "start_time"
    t.date "date"
    t.string "name_of_reserver"
    t.integer "number_of_seat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "business_id"
    t.integer "user_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "number_of_questions"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "name"
    t.text "image"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "answer_id"
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "likes"
  end

end
