class AddColumnDateToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :date_started, :date
  end
end
