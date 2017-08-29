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

ActiveRecord::Schema.define(version: 20170828122955) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answer_sets", force: :cascade do |t|
    t.bigint "quiz_id"
    t.string "candidate_name"
    t.string "grade"
    t.decimal "total_gained_marks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_answer_sets_on_quiz_id"
  end

  create_table "answers", force: :cascade do |t|
    t.bigint "answer_set_id"
    t.bigint "question_id"
    t.string "given_answer", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_set_id"], name: "index_answers_on_answer_set_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "quiz_id"
    t.text "description"
    t.decimal "marks"
    t.time "time_of_question"
    t.json "options"
    t.string "correct_answer", default: [], array: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quiz_id"], name: "index_questions_on_quiz_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "level", default: 1
    t.integer "total_questions", default: 20
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
