class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :mobile_company
      t.string :code, limit: 15
      t.string :name, limit: 50
      t.string :state, limit: 2
      t.references :county, foreign_key: true
      t.string :neighborhood, limit: 50
      t.string :address, limit: 250
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
