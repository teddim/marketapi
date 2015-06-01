# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150601022251) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "markets", force: :cascade do |t|
    t.string   "fmid"
    t.string   "marketname"
    t.string   "website"
    t.string   "street"
    t.string   "city"
    t.string   "county"
    t.string   "state"
    t.integer  "zip"
    t.string   "season1date"
    t.string   "season1time"
    t.string   "season2date"
    t.string   "season2time"
    t.string   "season3date"
    t.string   "season3time"
    t.string   "season4date"
    t.string   "season4time"
    t.float    "x"
    t.float    "y"
    t.string   "location"
    t.boolean  "credit"
    t.boolean  "wic"
    t.boolean  "wiccash"
    t.boolean  "sfmnp"
    t.boolean  "snap"
    t.boolean  "bakedgoods"
    t.boolean  "cheese"
    t.boolean  "crafts"
    t.boolean  "flowers"
    t.boolean  "eggs"
    t.boolean  "seafood"
    t.boolean  "herbs"
    t.boolean  "vegetables"
    t.boolean  "honey"
    t.boolean  "jams"
    t.boolean  "maple"
    t.boolean  "meat"
    t.boolean  "nursery"
    t.boolean  "nuts"
    t.boolean  "plants"
    t.boolean  "poultry"
    t.boolean  "prepared"
    t.boolean  "soap"
    t.boolean  "trees"
    t.boolean  "wine"
    t.datetime "updatedtime"
  end

end
