class Player < ApplicationRecord
    has_many :characters
    has_many :games
    has_many :dms, through: :games
    has_secured_password
end
