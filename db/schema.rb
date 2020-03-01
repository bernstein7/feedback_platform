# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_01_170225) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "rate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "body"
    t.text "#<ActiveRecord::ConnectionAdapters::PostgreSQL::TableDefinition"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "rating"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.bigint "experience_id", null: false
    t.index ["experience_id"], name: "index_feedbacks_on_experience_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "responses", force: :cascade do |t|
    t.bigint "feedback_id", null: false
    t.bigint "question_id", null: false
    t.bigint "answer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["feedback_id", "question_id"], name: "index_responses_on_feedback_id_and_question_id", unique: true
    t.index ["feedback_id"], name: "index_responses_on_feedback_id"
  end

  add_foreign_key "feedbacks", "experiences"
  add_foreign_key "responses", "answers"
  add_foreign_key "responses", "feedbacks"
  add_foreign_key "responses", "questions"
end
