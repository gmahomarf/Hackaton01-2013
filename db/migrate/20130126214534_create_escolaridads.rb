class CreateEscolaridads < ActiveRecord::Migration
  def change
    create_table :escolaridads do |t|
      t.string :grado

      t.timestamps
    end
  end
end
