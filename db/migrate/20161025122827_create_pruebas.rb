class CreatePruebas < ActiveRecord::Migration
  def change
    create_table :pruebas do |t|
      t.string :nombre
      t.string :correo
      t.integer :cantidad
      t.string :imag

      t.timestamps null: false
    end
  end
end
