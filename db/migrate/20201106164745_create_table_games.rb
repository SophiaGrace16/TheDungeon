class CreateTableGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.boolean :active
      t.string :camp_name
      t.text :loot_found
      t.integer :exp_gained
      t.integer :coin_reward
      t.text :game_notes
      t.belongs_to :dm
    end
  end
end
