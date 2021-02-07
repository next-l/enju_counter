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

ActiveRecord::Schema.define(version: 2021_02_07_172116) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "enju_counter_dr_d1_reports", force: :cascade do |t|
    t.uuid "enju_counter_dr_d1_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_dr_d1_requests_id"], name: "index_enju_counter_dr_d1_reports_on_dr_d1_requests_id"
  end

  create_table "enju_counter_dr_d1_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_dr_d2_reports", force: :cascade do |t|
    t.uuid "enju_counter_dr_d2_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_dr_d2_requests_id"], name: "index_enju_counter_dr_d2_reports_on_dr_d2_requests_id"
  end

  create_table "enju_counter_dr_d2_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_dsr_reports", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "enju_counter_dsr_report_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_dsr_report_id"], name: "index_enju_counter_dsr_reports_on_enju_counter_dsr_report_id"
  end

  create_table "enju_counter_dsr_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_ir_a1_reports", force: :cascade do |t|
    t.uuid "enju_counter_ir_a1_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_ir_a1_requests_id"], name: "index_enju_counter_ir_a1_reports_on_ir_a1_requests_id"
  end

  create_table "enju_counter_ir_a1_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_ir_m1_reports", force: :cascade do |t|
    t.uuid "enju_counter_ir_m1_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_ir_m1_requests_id"], name: "index_enju_counter_ir_m1_reports_on_ir_m1_requests_id"
  end

  create_table "enju_counter_ir_m1_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_pr_p1_reports", force: :cascade do |t|
    t.uuid "enju_counter_pr_p1_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_pr_p1_requests_id"], name: "index_enju_counter_pr_p1_reports_on_pr_p1_requests_id"
  end

  create_table "enju_counter_pr_p1_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_reports", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "enju_counter_request_id", null: false
    t.string "report_type"
    t.uuid "report_id"
    t.jsonb "response", default: {}, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_request_id"], name: "index_enju_counter_reports_on_enju_counter_request_id"
    t.index ["report_type", "report_id"], name: "index_enju_counter_reports_on_report"
  end

  create_table "enju_counter_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "user_id", null: false
    t.json "response", default: {}, null: false
    t.string "request_type"
    t.uuid "request_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["request_type", "request_id"], name: "index_enju_counter_requests_on_request"
    t.index ["user_id"], name: "index_enju_counter_requests_on_user_id"
  end

  create_table "enju_counter_tr_b1_reports", force: :cascade do |t|
    t.uuid "enju_counter_tr_b1_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_tr_b1_requests_id"], name: "index_enju_counter_tr_b1_reports_on_tr_b1_requests_id"
  end

  create_table "enju_counter_tr_b1_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_tr_b2_reports", force: :cascade do |t|
    t.uuid "enju_counter_tr_b2_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_tr_b2_requests_id"], name: "index_enju_counter_tr_b2_reports_on_tr_b2_requests_id"
  end

  create_table "enju_counter_tr_b2_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_tr_b3_reports", force: :cascade do |t|
    t.uuid "enju_counter_tr_b3_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_tr_b3_requests_id"], name: "index_enju_counter_tr_b3_reports_on_tr_b3_requests_id"
  end

  create_table "enju_counter_tr_b3_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_tr_j1_reports", force: :cascade do |t|
    t.uuid "enju_counter_tr_j1_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_tr_j1_requests_id"], name: "index_enju_counter_tr_j1_reports_on_tr_j1_requests_id"
  end

  create_table "enju_counter_tr_j1_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_tr_j2_reports", force: :cascade do |t|
    t.uuid "enju_counter_tr_j2_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_tr_j2_requests_id"], name: "index_enju_counter_tr_j2_reports_on_tr_j2_requests_id"
  end

  create_table "enju_counter_tr_j2_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_tr_j3_reports", force: :cascade do |t|
    t.uuid "enju_counter_tr_j3_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_tr_j3_requests_id"], name: "index_enju_counter_tr_j3_reports_on_tr_j3_requests_id"
  end

  create_table "enju_counter_tr_j3_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "enju_counter_tr_j4_reports", force: :cascade do |t|
    t.uuid "enju_counter_tr_j4_requests_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enju_counter_tr_j4_requests_id"], name: "index_enju_counter_tr_j4_reports_on_tr_j4_requests_id"
  end

  create_table "enju_counter_tr_j4_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  add_foreign_key "enju_counter_dr_d1_reports", "enju_counter_dr_d1_requests", column: "enju_counter_dr_d1_requests_id"
  add_foreign_key "enju_counter_dr_d2_reports", "enju_counter_dr_d2_requests", column: "enju_counter_dr_d2_requests_id"
  add_foreign_key "enju_counter_dsr_reports", "enju_counter_dsr_reports"
  add_foreign_key "enju_counter_ir_a1_reports", "enju_counter_ir_a1_requests", column: "enju_counter_ir_a1_requests_id"
  add_foreign_key "enju_counter_ir_m1_reports", "enju_counter_ir_m1_requests", column: "enju_counter_ir_m1_requests_id"
  add_foreign_key "enju_counter_pr_p1_reports", "enju_counter_pr_p1_requests", column: "enju_counter_pr_p1_requests_id"
  add_foreign_key "enju_counter_reports", "enju_counter_requests"
  add_foreign_key "enju_counter_requests", "users"
  add_foreign_key "enju_counter_tr_b1_reports", "enju_counter_tr_b1_requests", column: "enju_counter_tr_b1_requests_id"
  add_foreign_key "enju_counter_tr_b2_reports", "enju_counter_tr_b2_requests", column: "enju_counter_tr_b2_requests_id"
  add_foreign_key "enju_counter_tr_b3_reports", "enju_counter_tr_b3_requests", column: "enju_counter_tr_b3_requests_id"
  add_foreign_key "enju_counter_tr_j1_reports", "enju_counter_tr_j1_requests", column: "enju_counter_tr_j1_requests_id"
  add_foreign_key "enju_counter_tr_j2_reports", "enju_counter_tr_j2_requests", column: "enju_counter_tr_j2_requests_id"
  add_foreign_key "enju_counter_tr_j3_reports", "enju_counter_tr_j3_requests", column: "enju_counter_tr_j3_requests_id"
  add_foreign_key "enju_counter_tr_j4_reports", "enju_counter_tr_j4_requests", column: "enju_counter_tr_j4_requests_id"
  add_foreign_key "profiles", "roles", column: "required_role_id"
  add_foreign_key "user_has_roles", "roles"
  add_foreign_key "user_has_roles", "users"
  add_foreign_key "users", "profiles"
end
