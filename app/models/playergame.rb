class Playergame < ApplicationRecord
    belongs_to :player
    belongs_to :game

    validates :camp_name, :loot_found, :coin_reward, :exp_reward, :game_notes, :dm_host_name, presence: true

end
