class Player < ApplicationRecord
    has_many :characters
    has_many :playergames
    has_many :games, through: :playergames
    has_secure_password

    validates :name, :username, :password, :email, presence: true
    validates :username, :email, uniqueness:true
end
