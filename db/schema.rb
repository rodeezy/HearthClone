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

ActiveRecord::Schema.define(version: 20170630231202) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battle_cards", force: :cascade do |t|
    t.integer  "battle_deck_id"
    t.integer  "hand_id"
    t.integer  "field_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "battle_decks", force: :cascade do |t|
    t.integer  "battle_side_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "battle_sides", force: :cascade do |t|
    t.integer  "player_id",               null: false
    t.integer  "deck_id",                 null: false
    t.integer  "health",     default: 30
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "battle_id",               null: false
  end

  create_table "battles", force: :cascade do |t|
    t.boolean  "in_progress", default: true
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "card_posts", force: :cascade do |t|
    t.integer  "author_id",   null: false
    t.text     "description"
    t.integer  "attack",      null: false
    t.integer  "defense",     null: false
    t.integer  "cost",        null: false
    t.string   "powerup"
    t.string   "card_type",   null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name",        null: false
  end

  create_table "cards", force: :cascade do |t|
    t.integer  "attack",     null: false
    t.integer  "defense",    null: false
    t.integer  "cost",       null: false
    t.string   "powerup"
    t.string   "name",       null: false
    t.string   "card_type",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comments", force: :cascade do |t|
    t.integer  "author_id",         null: false
    t.integer  "post_id",           null: false
    t.text     "body",              null: false
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "post_type",         null: false
    t.integer  "parent_comment_id"
  end

  create_table "deck_cards", force: :cascade do |t|
    t.integer  "deck_id",                     null: false
    t.integer  "card_id",                     null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.boolean  "two_in_deck", default: false
  end

  create_table "decks", force: :cascade do |t|
    t.integer  "owner_id",   null: false
    t.string   "hero_class", null: false
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_decks_on_owner_id", using: :btree
  end

  create_table "fields", force: :cascade do |t|
    t.integer  "battle_side_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "hands", force: :cascade do |t|
    t.integer  "battle_side_id", null: false
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "image_posts", force: :cascade do |t|
    t.integer  "author_id",   null: false
    t.integer  "post_id",     null: false
    t.string   "image_url",   null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "scales", force: :cascade do |t|
    t.integer  "user_id",       null: false
    t.integer  "value",         null: false
    t.integer  "scalable_id",   null: false
    t.string   "scalable_type", null: false
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                    null: false
    t.string   "password_digest",             null: false
    t.string   "session_token",               null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "wins",            default: 0
    t.integer  "losses",          default: 0
    t.index ["username"], name: "index_users_on_username", using: :btree
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id",      null: false
    t.integer  "value",        null: false
    t.integer  "votable_id",   null: false
    t.string   "votable_type", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
