class CreateArriendos < ActiveRecord::Migration[7.2]
  def change
    create_table :arriendos do |t|
      t.references :pelicula, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
