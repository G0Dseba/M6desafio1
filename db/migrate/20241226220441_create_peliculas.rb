class CreatePeliculas < ActiveRecord::Migration[7.2]
  def change
    create_table :peliculas do |t|
      t.string :titulo

      t.timestamps
    end
  end
end
