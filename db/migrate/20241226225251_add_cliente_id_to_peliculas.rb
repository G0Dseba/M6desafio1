class AddClienteIdToPeliculas < ActiveRecord::Migration[7.2]
  def change
    add_column :peliculas, :cliente_id, :integer
  end
end
