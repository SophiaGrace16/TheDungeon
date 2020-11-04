class Dm < ApplicationRecord
    has_many :stories
    has_many :games
    has_many :players, through: :games
    has_secure_password

    validates :name, :username, :password, :email, presence: true
    validates :username, :email, uniqueness:true
end
