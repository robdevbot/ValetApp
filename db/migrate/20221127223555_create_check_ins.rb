class CreateCheckIns < ActiveRecord::Migration[7.0]
  def change
    create_table :check_ins do |t|
      t.datetime :time
      t.index :vehicle_id
      t.index :attendant_id
      t.string :parking_spot

      t.timestamps
    end
  end
end
