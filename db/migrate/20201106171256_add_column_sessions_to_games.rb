class AddColumnSessionsToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :sessions_played, :integer
  end
end
