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

ActiveRecord::Schema.define(version: 2021_02_07_100649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "enju_counter_requests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.json "response", default: {}, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_enju_counter_requests_on_user_id"
  end

  create_table "profiles", comment: "プロフィール", force: :cascade do |t|
    t.string "locale", comment: "ロケール"
    t.string "user_number", comment: "利用者番号"
    t.text "full_name", comment: "氏名"
    t.text "note", comment: "備考"
    t.text "keyword_list", comment: "キーワードリスト"
    t.bigint "required_role_id", comment: "参照に必要な権限"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "expired_at"
    t.text "full_name_transcription"
    t.datetime "date_of_birth"
    t.jsonb "full_name_translations", default: {}, null: false
    t.index ["required_role_id"], name: "index_profiles_on_required_role_id"
    t.index ["user_number"], name: "index_profiles_on_user_number", unique: true
  end

  create_table "roles", comment: "権限", force: :cascade do |t|
    t.string "name", null: false
    t.string "display_name"
    t.text "note", comment: "備考"
    t.integer "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "display_name_translations", default: {}, null: false
  end

  create_table "user_has_roles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_has_roles_on_role_id"
    t.index ["user_id"], name: "index_user_has_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.datetime "expired_at"
    t.integer "failed_attempts", default: 0
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "confirmed_at"
    t.bigint "profile_id", comment: "プロフィールID"
    t.index ["email"], name: "index_users_on_email"
    t.index ["profile_id"], name: "index_users_on_profile_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "enju_counter_requests", "users"
  add_foreign_key "profiles", "roles", column: "required_role_id"
  add_foreign_key "user_has_roles", "roles"
  add_foreign_key "user_has_roles", "users"
  add_foreign_key "users", "profiles"
end
