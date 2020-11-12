class AddCampNameColumnToPlayergames < ActiveRecord::Migration[6.0]
  def change
    add_column :playergames, :camp_name, :string
  end
end
