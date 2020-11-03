class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :class
      t.integer :level
      t.string :background
      t.string :race
      t.string :alignment
      t.integer :exp
      t.integer :str
      t.integercon :dex
      t.integer :inte
      t.integer :wis
      t.integer :chari
      t.integer :str_mod
      t.integer :dex_mod
      t.integer :con_mod
      t.integer :inte_mod
      t.integer :wis_mod
      t.integer :chari_mod
      t.integer :passive_wis
      t.text :proficiencies
      t.text :lang
      t.integer :armor_class
      t.integer :initiative
      t.integer :speed
      t.integer :hit_pt_max
      t.string :hit_dice
      t.string :spellname
      t.text :spell_desc
      t.text :arm_desc
      t.integer :cp
      t.integer :sp
      t.integer :ep
      t.integer :gp
      t.integer :pp
      t.text :personality_traits
      t.text :ideas
      t.text :bonds
      t.text :flaws
      t.text :feat_traits
      t.text :race_info
      t.text :class_info
      t.text :bg_story
      t.text :lvl_gain
      t.integer :player_id

      t.timestamps
    end
  end
end
