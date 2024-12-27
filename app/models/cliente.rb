class Cliente < ApplicationRecord
    has_one :arriendo 
    has_one :pelicula, through: :arriendo
end
