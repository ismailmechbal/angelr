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

ActiveRecord::Schema.define(version: 20161119184455) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.string   "author_type"
    t.integer  "author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "attachments", force: :cascade do |t|
    t.string   "attachable_type"
    t.integer  "attachable_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.index ["attachable_id"], name: "index_attachments_on_attachable_id", using: :btree
    t.index ["attachable_type", "attachable_id"], name: "index_attachments_on_attachable_type_and_attachable_id", using: :btree
  end

  create_table "decks", force: :cascade do |t|
    t.integer  "startup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["startup_id"], name: "index_decks_on_startup_id", using: :btree
  end

  create_table "galleries", force: :cascade do |t|
    t.integer  "startup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["startup_id"], name: "index_galleries_on_startup_id", using: :btree
  end

  create_table "startups", force: :cascade do |t|
    t.string   "name",           default: "",    null: false
    t.string   "short_desc",     default: "",    null: false
    t.text     "long_desc",      default: ""
    t.string   "website_url",    default: ""
    t.string   "video_url",      default: ""
    t.string   "note_founded",   default: ""
    t.string   "note_team_size", default: ""
    t.string   "note_stage",     default: ""
    t.string   "note_traction",  default: ""
    t.boolean  "is_active",      default: false
    t.integer  "user_id"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.index ["user_id"], name: "index_startups_on_user_id", using: :btree
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "role"
    t.string   "facebook_url"
    t.string   "twitter_url"
    t.string   "linkedin_url"
    t.integer  "startup_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["startup_id"], name: "index_teams_on_startup_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "decks", "startups"
  add_foreign_key "galleries", "startups"
  add_foreign_key "startups", "users"
  add_foreign_key "teams", "startups"
end
