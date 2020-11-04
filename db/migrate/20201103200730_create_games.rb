class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.boolean :active
      t.belongs_to :dm
      t.belongs_to :player
      t.string :camp_name
      t.text :loot_found
      t.integer :exp_gained
      t.date :date_started

      t.timestamps
    end
  end
end
