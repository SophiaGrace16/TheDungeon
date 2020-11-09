class RenameColumnInGames < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :active, :game_active
  end
end
