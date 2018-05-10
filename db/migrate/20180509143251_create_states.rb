class CreateStates < ActiveRecord::Migration[5.2]
  def change
    create_table :states do |t|
      t.string :state, limit: 2
      t.string :name, limit: 50

      t.timestamps
    end
  end
end
