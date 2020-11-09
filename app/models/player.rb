class Player < ApplicationRecord
    has_many :characters
    has_many :playergames
    has_many :games, through: :playergames
    has_secure_password

    validates :name, :username, :password, :email, presence: true
    validates :username, :email, uniqueness:true

    def self.create_by_google_omniauth(auth)
        Player.find_or_create_by(email: auth[:info][:email]) do |u|
            u.name = auth[:info][:name]
            u.username = auth[:info][:email]
            u.password = SecureRandom.hex
          end
    end
end
