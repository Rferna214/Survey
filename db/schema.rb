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

ActiveRecord::Schema[7.0].define(version: 2022_04_26_140035) do
  create_table "gits", force: :cascade do |t|
    t.string "git_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "question_text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "respondent_questions", force: :cascade do |t|
    t.integer "respondent_id", null: false
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "responses"
    t.index ["question_id"], name: "index_respondent_questions_on_question_id"
    t.index ["respondent_id"], name: "index_respondent_questions_on_respondent_id"
  end

  create_table "respondents", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey1s", force: :cascade do |t|
    t.string "survey_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "survey_questions", force: :cascade do |t|
    t.integer "survey1_id", null: false
    t.integer "question_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "responses"
    t.index ["question_id"], name: "index_survey_questions_on_question_id"
    t.index ["survey1_id"], name: "index_survey_questions_on_survey1_id"
  end

  add_foreign_key "respondent_questions", "questions"
  add_foreign_key "respondent_questions", "respondents"
  add_foreign_key "survey_questions", "questions"
  add_foreign_key "survey_questions", "survey1s"
end
