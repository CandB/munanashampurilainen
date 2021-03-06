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

ActiveRecord::Schema.define(version: 20140424233552) do

  create_table "articles", force: true do |t|
    t.string   "author"
    t.string   "title"
    t.string   "journal"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "authors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "author"
    t.string   "editor"
    t.string   "title"
    t.string   "publisher"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "in_proceedings", force: true do |t|
    t.string   "title"
    t.string   "booktitle"
    t.integer  "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "incollections", force: true do |t|
    t.string   "author"
    t.string   "title"
    t.integer  "year"
    t.string   "booktitle"
    t.string   "publisher"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "inproceedings", force: true do |t|
    t.string   "author"
    t.string   "title"
    t.string   "booktitle"
    t.string   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publishers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "references", force: true do |t|
    t.integer  "author_id"
    t.integer  "in_proceeding_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "publisher_id"
  end

end
