class ChangecolumnSizefromAnatelLocality < ActiveRecord::Migration[5.2]
  def up
    change_column :anatel_localities, :placeInitials, :string, limit: 4
    change_column :anatel_localities, :place, :string, limit: 50
    change_column :anatel_localities, :county, :string, limit: 50
    change_column :anatel_localities, :countyInitials, :string, limit: 4
  end

  def down
    change_column :anatel_localities, :placeInitials, :string
    change_column :anatel_localities, :place, :string
    change_column :anatel_localities, :county, :string
    change_column :anatel_localities, :countyInitials, :string
  end
end
