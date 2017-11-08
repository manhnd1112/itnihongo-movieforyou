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

ActiveRecord::Schema.define(version: 20171107165647) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "avatar_image"
    t.datetime "birthday"
    t.text "description"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookmarks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
    t.integer "review_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "flag_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.integer "state", default: 0
    t.string "subject"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "likes", force: :cascade do |t|
    t.integer "review_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_actors", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "actor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movie_types", force: :cascade do |t|
    t.integer "movie_id"
    t.integer "type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.datetime "realease_date"
    t.string "producer"
    t.string "director"
    t.integer "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.float "imdb"
    t.text "description"
  end

  create_table "notification_trans", force: :cascade do |t|
    t.integer "notification_id"
    t.string "locale"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["notification_id", "locale"], name: "index_notification_trans_on_notification_id_and_locale", unique: true
    t.index ["notification_id"], name: "index_notification_trans_on_notification_id"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer "user_id", null: false
    t.boolean "isRead", default: false
    t.text "content"
    t.string "link_to"
    t.string "target"
    t.integer "target_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "url"
    t.integer "review_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.float "score", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "message"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.integer "movie_id"
    t.text "content"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suggest_movies", force: :cascade do |t|
    t.integer "from_id", null: false
    t.integer "to_id", null: false
    t.integer "movie_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "types", force: :cascade do |t|
    t.string "name"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.string "name"
    t.date "birth"
    t.string "avatar"
    t.string "provider"
    t.string "uid"
    t.boolean "is_admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.string "votable_type"
    t.integer "votable_id"
    t.string "voter_type"
    t.integer "voter_id"
    t.boolean "vote_flag"
    t.string "vote_scope"
    t.integer "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
    t.index ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"
  end

end
