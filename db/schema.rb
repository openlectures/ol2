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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121113175047) do

  create_table "checkpoints", :force => true do |t|
    t.string   "checkpoint"
    t.integer  "lesson_id"
    t.text     "description"
    t.string   "videourl"
    t.text     "objective"
    t.integer  "position"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
  end

  add_index "checkpoints", ["slug"], :name => "index_checkpoints_on_slug", :unique => true

  create_table "lessons", :force => true do |t|
    t.string   "lesson"
    t.integer  "topic_id"
    t.boolean  "is_sublesson", :default => false
    t.integer  "position"
    t.integer  "user_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
    t.string   "slug"
  end

  add_index "lessons", ["slug"], :name => "index_lessons_on_slug", :unique => true

  create_table "subjects", :force => true do |t|
    t.string   "subject"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "subjects", ["slug"], :name => "index_subjects_on_slug", :unique => true

  create_table "topics", :force => true do |t|
    t.string   "topic"
    t.integer  "subject_id"
    t.integer  "position"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "slug"
  end

  add_index "topics", ["slug"], :name => "index_topics_on_slug", :unique => true

end
