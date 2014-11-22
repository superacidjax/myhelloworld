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

ActiveRecord::Schema.define(version: 20141122125041) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "charges", force: true do |t|
    t.string   "state"
    t.string   "stripe_id"
    t.text     "error"
    t.integer  "fee_amount"
    t.integer  "amount"
    t.integer  "course_id"
    t.integer  "user_id"
    t.string   "guid"
    t.date     "access_expiration_date"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.date     "card_expiration"
    t.string   "customer_id"
    t.string   "default_card"
  end

  add_index "charges", ["access_expiration_date"], name: "index_charges_on_access_expiration_date", using: :btree
  add_index "charges", ["course_id"], name: "index_charges_on_course_id", using: :btree
  add_index "charges", ["guid"], name: "index_charges_on_guid", using: :btree
  add_index "charges", ["state"], name: "index_charges_on_state", using: :btree
  add_index "charges", ["user_id"], name: "index_charges_on_user_id", using: :btree

  create_table "commontator_comments", force: true do |t|
    t.string   "creator_type"
    t.integer  "creator_id"
    t.string   "editor_type"
    t.integer  "editor_id"
    t.integer  "thread_id",                     null: false
    t.text     "body",                          null: false
    t.datetime "deleted_at"
    t.integer  "cached_votes_up",   default: 0
    t.integer  "cached_votes_down", default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commontator_comments", ["cached_votes_down"], name: "index_commontator_comments_on_cached_votes_down", using: :btree
  add_index "commontator_comments", ["cached_votes_up"], name: "index_commontator_comments_on_cached_votes_up", using: :btree
  add_index "commontator_comments", ["creator_id", "creator_type", "thread_id"], name: "index_commontator_comments_on_c_id_and_c_type_and_t_id", using: :btree
  add_index "commontator_comments", ["thread_id", "created_at"], name: "index_commontator_comments_on_thread_id_and_created_at", using: :btree

  create_table "commontator_subscriptions", force: true do |t|
    t.string   "subscriber_type", null: false
    t.integer  "subscriber_id",   null: false
    t.integer  "thread_id",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commontator_subscriptions", ["subscriber_id", "subscriber_type", "thread_id"], name: "index_commontator_subscriptions_on_s_id_and_s_type_and_t_id", unique: true, using: :btree
  add_index "commontator_subscriptions", ["thread_id"], name: "index_commontator_subscriptions_on_thread_id", using: :btree

  create_table "commontator_threads", force: true do |t|
    t.string   "commontable_type"
    t.integer  "commontable_id"
    t.datetime "closed_at"
    t.string   "closer_type"
    t.integer  "closer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "commontator_threads", ["commontable_id", "commontable_type"], name: "index_commontator_threads_on_c_id_and_c_type", unique: true, using: :btree

  create_table "completions", force: true do |t|
    t.integer  "lesson_id"
    t.integer  "user_id"
    t.boolean  "completed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "course_id"
  end

  add_index "completions", ["course_id"], name: "index_completions_on_course_id", using: :btree
  add_index "completions", ["lesson_id"], name: "index_completions_on_lesson_id", using: :btree
  add_index "completions", ["user_id"], name: "index_completions_on_user_id", using: :btree

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "price"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.text     "description"
    t.string   "video_url"
    t.string   "slug"
    t.boolean  "new"
    t.string   "programming_language"
    t.string   "level"
    t.string   "device"
    t.string   "headline"
  end

  add_index "courses", ["device"], name: "index_courses_on_device", using: :btree
  add_index "courses", ["level"], name: "index_courses_on_level", using: :btree
  add_index "courses", ["name"], name: "index_courses_on_name", using: :btree
  add_index "courses", ["new"], name: "index_courses_on_new", using: :btree
  add_index "courses", ["price"], name: "index_courses_on_price", using: :btree
  add_index "courses", ["programming_language"], name: "index_courses_on_programming_language", using: :btree
  add_index "courses", ["slug"], name: "index_courses_on_slug", unique: true, using: :btree

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "lessons", force: true do |t|
    t.integer  "course_id"
    t.string   "name"
    t.text     "description"
    t.string   "video_url"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.text     "notes"
    t.integer  "cached_votes_total",      default: 0
    t.integer  "cached_votes_score",      default: 0
    t.integer  "cached_votes_up",         default: 0
    t.integer  "cached_votes_down",       default: 0
    t.integer  "cached_weighted_score",   default: 0
    t.integer  "cached_weighted_total",   default: 0
    t.float    "cached_weighted_average", default: 0.0
    t.boolean  "free"
    t.string   "thumbnail_url"
    t.integer  "duration"
    t.integer  "lesson_number"
  end

  add_index "lessons", ["cached_votes_down"], name: "index_lessons_on_cached_votes_down", using: :btree
  add_index "lessons", ["cached_votes_score"], name: "index_lessons_on_cached_votes_score", using: :btree
  add_index "lessons", ["cached_votes_total"], name: "index_lessons_on_cached_votes_total", using: :btree
  add_index "lessons", ["cached_votes_up"], name: "index_lessons_on_cached_votes_up", using: :btree
  add_index "lessons", ["cached_weighted_average"], name: "index_lessons_on_cached_weighted_average", using: :btree
  add_index "lessons", ["cached_weighted_score"], name: "index_lessons_on_cached_weighted_score", using: :btree
  add_index "lessons", ["cached_weighted_total"], name: "index_lessons_on_cached_weighted_total", using: :btree
  add_index "lessons", ["course_id"], name: "index_lessons_on_course_id", using: :btree
  add_index "lessons", ["free"], name: "index_lessons_on_free", using: :btree
  add_index "lessons", ["lesson_number"], name: "index_lessons_on_lesson_number", using: :btree

  create_table "sales", force: true do |t|
    t.integer  "user_id"
    t.string   "guid"
    t.string   "stripe_id"
    t.integer  "course_id"
    t.datetime "access_expiration_date"
    t.integer  "price_paid"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "sales", ["access_expiration_date"], name: "index_sales_on_access_expiration_date", using: :btree
  add_index "sales", ["course_id"], name: "index_sales_on_course_id", using: :btree
  add_index "sales", ["guid"], name: "index_sales_on_guid", using: :btree
  add_index "sales", ["user_id"], name: "index_sales_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password",                null: false
    t.string   "salt",                            null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
    t.string   "display_name"
    t.boolean  "admin"
  end

  add_index "users", ["admin"], name: "index_users_on_admin", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", using: :btree

  create_table "versions", force: true do |t|
    t.string   "item_type",  null: false
    t.integer  "item_id",    null: false
    t.string   "event",      null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
