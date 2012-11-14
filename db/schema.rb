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

ActiveRecord::Schema.define(:version => 20121114050146) do

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

  create_table "questionanswers", :force => true do |t|
    t.text     "question"
    t.text     "answer"
    t.integer  "position"
    t.integer  "checkpoint_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "slug"
  end

  add_index "questionanswers", ["slug"], :name => "index_questionanswers_on_slug", :unique => true

  create_table "subjects", :force => true do |t|
    t.string   "subject"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "subjects", ["slug"], :name => "index_subjects_on_slug", :unique => true

  create_table "summaries", :force => true do |t|
    t.string   "summary"
    t.integer  "position"
    t.integer  "lesson_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "summaries", ["slug"], :name => "index_summaries_on_slug", :unique => true

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

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",     :null => false
    t.string   "encrypted_password",     :default => "",     :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "role",                   :default => "user"
    t.string   "given_name"
    t.string   "surname"
    t.string   "school_email"
    t.integer  "grad_year"
    t.string   "school"
    t.string   "title"
    t.integer  "phone"
    t.string   "provider"
    t.string   "uid"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
