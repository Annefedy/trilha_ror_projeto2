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

ActiveRecord::Schema[7.0].define(version: 2022_11_24_150427) do
  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors_movies", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "movie_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_id"], name: "index_authors_movies_on_author_id"
    t.index ["movie_id"], name: "index_authors_movies_on_movie_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "movie_id", null: false
    t.boolean "approved", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_comments_on_movie_id"
  end

  create_table "logs", force: :cascade do |t|
    t.integer "comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_logs_on_comment_id"
  end

  create_table "logs_comments", force: :cascade do |t|
    t.integer "comment_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_logs_comments_on_comment_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.integer "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "authors_movies", "authors"
  add_foreign_key "authors_movies", "movies"
  add_foreign_key "comments", "movies"
end
