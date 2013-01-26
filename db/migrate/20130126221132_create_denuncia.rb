class CreateDenuncia < ActiveRecord::Migration
  def change
    create_table :denuncia do |t|
      t.references :tipo
      t.references :departamento
      t.references :municipio
      t.references :lugar
      t.date :fecha_incidente
      t.date :fecha_primera_audiencia
      t.date :fecha_segunda_audiencia
      t.date :fecha_sentencia
      t.string :estado
      t.references :institucion
      t.text :observaciones
      t.text :descripcion_hechos

      t.timestamps
    end
    add_index :denuncia, :tipo_id
    add_index :denuncia, :departamento_id
    add_index :denuncia, :municipio_id
    add_index :denuncia, :lugar_id
    add_index :denuncia, :institucion_id
  end
end
