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

ActiveRecord::Schema.define(:version => 20110520171023) do

  create_table "difficulties", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "links", :force => true do |t|
    t.integer  "topic_id"
    t.integer  "difficulty_id"
    t.string   "url"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_choices", :force => true do |t|
    t.integer   "question_id"
    t.text      "text"
    t.boolean   "correct"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "questions", :force => true do |t|
    t.text      "text"
    t.integer   "quiz_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "difficulty_id"
  end

  create_table "quizzes", :force => true do |t|
    t.text      "title"
    t.text      "description"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "topic_id"
    t.integer   "difficulty_id"
  end

  create_table "ranks", :force => true do |t|
    t.string    "name"
    t.string    "description"
    t.integer   "order"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "topics", :force => true do |t|
    t.string    "name"
    t.string    "description"
    t.integer   "rank_id"
    t.integer   "order"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

end
