class Playergame < ApplicationRecord
    belongs_to :player
    belongs_to :game

    validates :camp_name, :loot_found, :character, :date_joined, :coin_reward, :exp_gained, :game_notes, :dm_host_name, presence: true

end
