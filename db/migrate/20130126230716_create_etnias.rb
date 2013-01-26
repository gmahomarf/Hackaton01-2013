class CreateEtnias < ActiveRecord::Migration
  def change
    create_table :etnias do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
