class CreateTablePlayerGames < ActiveRecord::Migration[6.0]
  def change
    create_table :player_games do |t|
      t.string :camp_name
      t.text :loot_found
      t.integer :exp_gained
      t.integer :coin_reward
      t.date :date_joined
      t.text :game_notes
      t.belongs_to :game
      t.belongs_to :player
    end
  end
end
