class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :setting
      t.string :camp_type
      t.string :final_boss
      t.string :item_reward
      t.integer :coin_reward
      t.integer :exp_reward
      t.string :story_link
      t.text :summary
      t.string :difficulty
      t.integer :dm_id

      t.timestamps
    end
  end
end
