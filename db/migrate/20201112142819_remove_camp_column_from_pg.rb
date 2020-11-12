class RemoveCampColumnFromPg < ActiveRecord::Migration[6.0]
  def change
    remove_column :playergames, :camp_name
  end
end
