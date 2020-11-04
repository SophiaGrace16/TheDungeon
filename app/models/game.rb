class Game < ApplicationRecord
    belongs_to :player
    belongs_to :dm
    # has_many :stories, through: :dms
    # has_many :characters, through: :players
end
