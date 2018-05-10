class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :mobile_company
      t.string :code
      t.string :name
      t.string :state
      t.references :county, foreign_key: true
      t.string :neighborhood
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
