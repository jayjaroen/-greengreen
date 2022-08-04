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

ActiveRecord::Schema.define(version: 2022_08_04_120419) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "category_scores", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "challenge_category_id", null: false
    t.integer "score", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["challenge_category_id"], name: "index_category_scores_on_challenge_category_id"
    t.index ["user_id"], name: "index_category_scores_on_user_id"
  end

  create_table "challenge_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "challenges", force: :cascade do |t|
    t.text "action"
    t.integer "carbon_score"
    t.integer "point"
    t.bigint "challenge_category_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["challenge_category_id"], name: "index_challenges_on_challenge_category_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "country"
    t.string "emission_20"
    t.string "emission_17"
    t.string "per_cap_20"
    t.string "per_cap_17"
    t.string "pop_22"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_locations_on_user_id"
  end

  create_table "rankings", force: :cascade do |t|
    t.integer "rank"
    t.bigint "challenge_category_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["challenge_category_id"], name: "index_rankings_on_challenge_category_id"
    t.index ["user_id"], name: "index_rankings_on_user_id"
  end

  create_table "tips", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "challenge_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["challenge_category_id"], name: "index_tips_on_challenge_category_id"
  end

  create_table "user_challenge_records", force: :cascade do |t|
    t.string "date"
    t.bigint "user_challenge_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_challenge_id"], name: "index_user_challenge_records_on_user_challenge_id"
  end

  create_table "user_challenges", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "challenge_id", null: false
    t.integer "total_score"
    t.string "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["challenge_id"], name: "index_user_challenges_on_challenge_id"
    t.index ["user_id"], name: "index_user_challenges_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.string "country"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "category_scores", "challenge_categories"
  add_foreign_key "category_scores", "users"
  add_foreign_key "challenges", "challenge_categories"
  add_foreign_key "locations", "users"
  add_foreign_key "rankings", "challenge_categories"
  add_foreign_key "rankings", "users"
  add_foreign_key "tips", "challenge_categories"
  add_foreign_key "user_challenge_records", "user_challenges"
  add_foreign_key "user_challenges", "challenges"
  add_foreign_key "user_challenges", "users"
end
