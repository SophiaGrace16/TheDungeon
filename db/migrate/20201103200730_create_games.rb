class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.boolean :active
      t.integer :story_id
      t.integer :player_id
      t.string :camp_name

      t.timestamps
    end
  end
end
