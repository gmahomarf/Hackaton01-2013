class CreateEtnia < ActiveRecord::Migration
  def change
    create_table :etnia do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
