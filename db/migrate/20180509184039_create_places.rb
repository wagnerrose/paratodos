class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :neighborhood, limit: 50
      t.string :address, limit: 250
      t.float :latitude
      t.float :longitude
      t.references :county, foreign_key: true

      t.timestamps
    end
  end
end
