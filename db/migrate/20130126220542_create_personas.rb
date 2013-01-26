class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.string :lugar_nacimiento
      t.date :fecha_nacimiento
      t.references :escolaridad
      t.string :ocupacion
      t.references :estado_civil
      t.boolean :discapacidad
      t.boolean :reincidente
      t.integer :incidentes
      t.integer :hijos
      t.integer :hijas
      t.string :casa
      t.integer :ingreso_promedio
      t.string :jafatura_hogar
      t.references :etnia

      t.timestamps
    end
    add_index :personas, :escolaridad_id
    add_index :personas, :estado_civil_id
  end
end
