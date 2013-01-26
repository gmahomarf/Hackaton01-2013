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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130126221226) do

  create_table "denuncia", :force => true do |t|
    t.integer  "tipo_id"
    t.integer  "departamento_id"
    t.integer  "municipio_id"
    t.integer  "lugar_id"
    t.date     "fecha_incidente"
    t.date     "fecha_primera_audiencia"
    t.date     "fecha_segunda_audiencia"
    t.date     "fecha_sentencia"
    t.string   "estado"
    t.integer  "institucion_id"
    t.text     "observaciones"
    t.text     "descripcion_hechos"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "denuncia", ["departamento_id"], :name => "index_denuncia_on_departamento_id"
  add_index "denuncia", ["institucion_id"], :name => "index_denuncia_on_institucion_id"
  add_index "denuncia", ["lugar_id"], :name => "index_denuncia_on_lugar_id"
  add_index "denuncia", ["municipio_id"], :name => "index_denuncia_on_municipio_id"
  add_index "denuncia", ["tipo_id"], :name => "index_denuncia_on_tipo_id"

  create_table "denuncia_tipos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "departamentos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "escolaridads", :force => true do |t|
    t.string   "grado"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "estado_civils", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "etnia", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "institucions", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lugars", :force => true do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.integer  "municipio_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "lugars", ["municipio_id"], :name => "index_lugars_on_municipio_id"

  create_table "municipios", :force => true do |t|
    t.string   "nombre"
    t.integer  "departamento_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "municipios", ["departamento_id"], :name => "index_municipios_on_departamento_id"

  create_table "personas", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cedula"
    t.string   "lugar_nacimiento"
    t.date     "fecha_nacimiento"
    t.integer  "escolaridad_id"
    t.string   "ocupacion"
    t.integer  "estado_civil_id"
    t.boolean  "discapacidad"
    t.boolean  "reincidente"
    t.integer  "incidentes"
    t.integer  "hijos"
    t.integer  "hijas"
    t.string   "casa"
    t.integer  "ingreso_promedio"
    t.string   "jafatura_hogar"
    t.integer  "etnia_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "personas", ["escolaridad_id"], :name => "index_personas_on_escolaridad_id"
  add_index "personas", ["estado_civil_id"], :name => "index_personas_on_estado_civil_id"

end
