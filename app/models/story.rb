class Story < ApplicationRecord
    belongs_to :dm

    validates :title, :setting, :camp_type, :final_boss, :item_reward, :coin_reward, :exp_reward, :story_link, :summary, :difficulty, presence: true
end
