class CreateAnatelLocalities < ActiveRecord::Migration[5.2]
  def change
    create_table :anatel_localities do |t|
      t.string :placeInitials
      t.string :place
      t.string :county
      t.string :countyInitials
      t.references :state, foreign_key: true
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
