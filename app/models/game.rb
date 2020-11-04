class Game < ApplicationRecord
    belongs_to :player
    belongs_to :dm
end
