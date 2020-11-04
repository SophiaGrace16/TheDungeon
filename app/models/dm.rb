class Dm < ApplicationRecord
    has_many :stories
    has_many :games
    has_many :players, through: :games
    has_secure_password
end
