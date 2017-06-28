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

ActiveRecord::Schema.define(version: 20170628213328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_post_comment_replies", force: :cascade do |t|
    t.integer  "author_id",              null: false
    t.integer  "comment_id",             null: false
    t.text     "body",                   null: false
    t.integer  "upvotes",    default: 0
    t.integer  "downvotes",  default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "card_post_comments", force: :cascade do |t|
    t.integer  "author_id",              null: false
    t.integer  "post_id",                null: false
    t.text     "body",                   null: false
    t.integer  "upvotes",    default: 0
    t.integer  "downvotes",  default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "card_post_image_posts", force: :cascade do |t|
    t.integer  "author_id",   null: false
    t.integer  "post_id",     null: false
    t.string   "image_url",   null: false
    t.integer  "upvotes",     null: false
    t.integer  "downvotes",   null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "card_posts", force: :cascade do |t|
    t.integer  "author_id",               null: false
    t.text     "description"
    t.integer  "attack",                  null: false
    t.integer  "defense",                 null: false
    t.integer  "cost",                    null: false
    t.string   "powerup"
    t.integer  "upvotes",     default: 0
    t.integer  "downvotes",   default: 0
    t.string   "type",                    null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "cards", force: :cascade do |t|
    t.integer  "attack",     null: false
    t.integer  "defense",    null: false
    t.integer  "cost",       null: false
    t.string   "powerup"
    t.string   "name",       null: false
    t.string   "type",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deck_cards", force: :cascade do |t|
    t.integer  "deck_id",    null: false
    t.integer  "card_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "decks", force: :cascade do |t|
    t.integer  "owner_id",   null: false
    t.string   "class",      null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_decks_on_owner_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "password_digest", null: false
    t.string   "session_token",   null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["username"], name: "index_users_on_username", using: :btree
  end

end
