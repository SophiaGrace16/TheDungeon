class AddColumnHostToPlayergames < ActiveRecord::Migration[6.0]
  def change
    add_column :player_games, :dm_host_name, :string
  end
end
