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

ActiveRecord::Schema.define(version: 2022_04_22_094501) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "familles", force: :cascade do |t|
    t.string "name"
    t.text "info"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "famille_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "url_image"
    t.text "url_achat"
    t.string "taille"
    t.string "marque"
    t.text "description"
    t.index ["famille_id"], name: "index_items_on_famille_id"
  end

  create_table "litrages", force: :cascade do |t|
    t.integer "kg"
    t.float "debutant"
    t.float "intermediaire"
    t.float "confirme"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "items", "familles"
end
