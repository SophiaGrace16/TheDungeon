class RenamePlayersGames < ActiveRecord::Migration[6.0]
  def change
    rename_table :player_games, :playergames
  end
end
