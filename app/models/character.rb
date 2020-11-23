class Character < ApplicationRecord
    belongs_to :player

    validates :name, :character_class, :level, :background, :race, :alignment, :exp, :str, :con, :dex, :inte, :wis, :chari, :str_mod, :dex_mod, :con_mod, :inte_mod, :wis_mod, :chari_mod, :passive_wis, :proficiencies, :lang, :armor_class, :initiative, :speed, :hit_pt_max, :hit_dice, :spellname, :spell_desc, :arm_desc, :cp, :sp, :ep, :gp, :pp, :personality_traits, :ideas, :bonds, :flaws, :feat_traits, :race_info, :class_info, :bg_story, :lvl_gain, presence: true
end
