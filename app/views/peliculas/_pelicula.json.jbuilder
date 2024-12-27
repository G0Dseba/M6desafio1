json.extract! pelicula, :id, :titulo, :created_at, :updated_at
json.url pelicula_url(pelicula, format: :json)
