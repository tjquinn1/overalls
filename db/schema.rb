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

ActiveRecord::Schema.define(version: 20161215183041) do

  create_table "catalogs", force: :cascade do |t|
    t.string   "song_name",        limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "essential_id",     limit: 4
    t.string   "catalog_url_type", limit: 255
    t.string   "catalog_url",      limit: 255
  end

  add_index "catalogs", ["essential_id"], name: "index_catalogs_on_essential_id", using: :btree

  create_table "essentials", force: :cascade do |t|
    t.string   "band_name",          limit: 255
    t.text     "bio",                limit: 65535
    t.integer  "user_id",            limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.string   "country",            limit: 255
    t.integer  "album",              limit: 4
  end

  create_table "favorites", force: :cascade do |t|
    t.string   "song_title",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "essential_id", limit: 4
    t.string   "url",          limit: 255
    t.string   "url_type",     limit: 255
  end

  add_index "favorites", ["essential_id"], name: "index_favorites_on_essential_id", using: :btree

  create_table "instruments", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "member_id",  limit: 4
    t.string   "position",   limit: 255
  end

  add_index "instruments", ["member_id"], name: "index_instruments_on_member_id", using: :btree

  create_table "labels", force: :cascade do |t|
    t.string   "record_label", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "essential_id", limit: 4
  end

  add_index "labels", ["essential_id"], name: "index_labels_on_essential_id", using: :btree

  create_table "members", force: :cascade do |t|
    t.string   "band_member",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "essential_id", limit: 4
  end

  add_index "members", ["essential_id"], name: "index_members_on_essential_id", using: :btree

  create_table "sub_catalogs", force: :cascade do |t|
    t.string   "sub_url",      limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "catalog_id",   limit: 4
    t.string   "sub_url_type", limit: 255
  end

  add_index "sub_catalogs", ["catalog_id"], name: "index_sub_catalogs_on_catalog_id", using: :btree

  create_table "sub_favorites", force: :cascade do |t|
    t.string   "fav_url",      limit: 255
    t.string   "fav_url_type", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "favorite_id",  limit: 4
  end

  add_index "sub_favorites", ["favorite_id"], name: "index_sub_favorites_on_favorite_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "votes", force: :cascade do |t|
    t.integer  "votable_id",   limit: 4
    t.string   "votable_type", limit: 255
    t.integer  "voter_id",     limit: 4
    t.string   "voter_type",   limit: 255
    t.boolean  "vote_flag"
    t.string   "vote_scope",   limit: 255
    t.integer  "vote_weight",  limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope", using: :btree
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope", using: :btree

end
