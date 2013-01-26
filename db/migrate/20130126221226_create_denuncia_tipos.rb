class CreateDenunciaTipos < ActiveRecord::Migration
  def change
    create_table :denuncia_tipos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
