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

ActiveRecord::Schema[7.0].define(version: 2022_07_09_095632) do
  create_table "empresas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "rut"
    t.string "nombre"
    t.string "rep_legal"
    t.integer "telefono"
    t.string "calle"
    t.integer "numero"
    t.string "ciudad"
    t.integer "regionch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_empresas_on_email", unique: true
    t.index ["regionch_id"], name: "index_empresas_on_regionch_id"
    t.index ["reset_password_token"], name: "index_empresas_on_reset_password_token", unique: true
  end

  create_table "generos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regionches", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipos", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trabajos", force: :cascade do |t|
    t.string "nombre"
    t.string "cargo"
    t.string "descripcion"
    t.string "vacantes"
    t.integer "sueldo"
    t.date "fecha_inicio"
    t.integer "tipo_id", null: false
    t.integer "regionch_id", null: false
    t.integer "empresa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["empresa_id"], name: "index_trabajos_on_empresa_id"
    t.index ["regionch_id"], name: "index_trabajos_on_regionch_id"
    t.index ["tipo_id"], name: "index_trabajos_on_tipo_id"
  end

  create_table "trabajos_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "trabajo_id", null: false
    t.index ["trabajo_id", "user_id"], name: "index_trabajos_users_on_trabajo_id_and_user_id"
    t.index ["user_id", "trabajo_id"], name: "index_trabajos_users_on_user_id_and_trabajo_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "rut"
    t.string "nombre"
    t.string "ap_paterno"
    t.string "ap_materno"
    t.date "nacimiento"
    t.integer "genero_id"
    t.integer "telefono"
    t.string "cv"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["genero_id"], name: "index_users_on_genero_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "trabajos", "empresas"
  add_foreign_key "trabajos", "regionches"
  add_foreign_key "trabajos", "tipos"
  add_foreign_key "trabajos_users", "trabajos"
  add_foreign_key "trabajos_users", "users"
end
