# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require 'faker'

Arriendo.delete_all 
Cliente.delete_all 
Pelicula.delete_all

10.times do
    Cliente.create!(
      nombre: Faker::Name.name
    )
  end
  
  10.times do
    Pelicula.create!(
      titulo: Faker::Movie.title
    )
  end
  
  10.times do
    Arriendo.create!(
      pelicula: Pelicula.order('RANDOM()').first,
      cliente: Cliente.order('RANDOM()').first
    )
  end
  
  puts "Datos ficticios cargados exitosamente."