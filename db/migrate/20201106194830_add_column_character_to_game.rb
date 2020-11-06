class AddColumnCharacterToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :playergames, :character, :string
  end
end
