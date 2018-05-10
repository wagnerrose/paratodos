class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :neighborhood
      t.string :address
      t.float :latitude
      t.float :longitude
      t.references :county, foreign_key: true

      t.timestamps
    end
  end
end
