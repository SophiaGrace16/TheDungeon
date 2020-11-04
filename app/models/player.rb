class Player < ApplicationRecord
    has_many :characters
    has_many :games
    has_many :dms, through: :games
    has_secure_password

    validates :name, :username, :password, :email, presence: true
    validates :username, :email, uniqueness:true
end
