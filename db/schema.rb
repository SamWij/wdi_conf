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

ActiveRecord::Schema.define(version: 20170419084146) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "speakers", force: :cascade do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "linkedin"
    t.string   "image_url"
    t.string   "talk_title"
    t.string   "twitter"
    t.string   "talk_location"
    t.text     "talk_description"
    t.string   "job_title"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "description"
    t.string   "ticket_number"
    t.decimal  "cost"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "newsletter"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
