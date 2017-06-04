class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.integer :Article_id
      t.text :body

      t.timestamps null: false
    end
  end
end
