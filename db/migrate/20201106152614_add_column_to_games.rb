class AddColumnToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :coin_reward, :integer
  end
end
