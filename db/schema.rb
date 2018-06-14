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

ActiveRecord::Schema.define(version: 2018_06_13_192537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adresses", force: :cascade do |t|
    t.string "uf"
    t.string "city"
    t.string "neighborhood"
    t.string "street"
    t.string "quartrain"
    t.string "set"
    t.string "block"
    t.string "number"
    t.string "townhouse"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_adresses_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "sex"
    t.string "cpf"
    t.string "identity"
    t.date "date_birth"
    t.string "cell_phone"
    t.string "email"
    t.date "date_inclusion"
    t.string "marital_status"
    t.string "professional"
    t.string "admin"
    t.string "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
