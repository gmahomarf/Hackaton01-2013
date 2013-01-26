class CreateLugars < ActiveRecord::Migration
  def change
    create_table :lugars do |t|
      t.string :nombre
      t.string :tipo
      t.references :municipio

      t.timestamps
    end
    add_index :lugars, :municipio_id
  end
end
