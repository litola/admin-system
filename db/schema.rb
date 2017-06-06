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

ActiveRecord::Schema.define(version: 20170606164234) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string "name", null: false
    t.string "phone"
    t.string "rfc"
    t.string "street"
    t.string "number"
    t.string "neighborhood"
    t.string "city"
    t.string "zipcode"
    t.string "country"
    t.string "contact", null: false
    t.string "contact_number", null: false
    t.integer "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "rfc"
    t.string "street"
    t.string "number"
    t.string "neighborhood"
    t.string "city"
    t.string "zipcode"
    t.string "country"
    t.string "phone"
    t.string "contact"
    t.string "contact_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "company_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "company_id"
    t.integer "client_id"
    t.string "name"
    t.string "contact"
    t.string "contact_number"
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
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "role"
    t.integer "company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "work_shifts", force: :cascade do |t|
    t.integer "company_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worker_statuses", force: :cascade do |t|
    t.integer "company_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.integer "company_id"
    t.integer "job_id"
    t.integer "worker_status_id"
    t.integer "worker_number"
    t.string "first_name"
    t.string "second_name"
    t.string "first_lastname"
    t.string "second_lastname"
    t.date "dob"
    t.string "street"
    t.string "number"
    t.string "neighborhood"
    t.string "city"
    t.string "zip"
    t.string "code"
    t.string "country"
    t.string "curp"
    t.string "phone"
    t.string "cellphone"
    t.string "marital_status"
    t.boolean "cartilla_militar"
    t.string "matricula_cartilla"
    t.date "vigencia_cartilla"
    t.boolean "porte_arma"
    t.string "numero_porte_arma"
    t.boolean "licencia_conducir"
    t.string "matricula_licencia_conducir"
    t.string "seguro_social"
    t.string "dad_name"
    t.string "mother_name"
    t.string "spouse_name"
    t.string "spouse_phone"
    t.date "day_of_entry"
    t.string "daily_income"
    t.string "extra_hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
