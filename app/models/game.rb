class Game < ApplicationRecord
    has_many :playergames
    has_many :players, through: :playergames
    belongs_to :dm
    scope :game_active, -> { where(game_active: true) }
    
    validates :game_active, :camp_name, :loot_found, :coin_reward, :exp_gained, :game_notes, :date_started, :sessions_played, presence: true

    

end
