class CreateCheckOuts < ActiveRecord::Migration[7.0]
  def change
    create_table :check_outs do |t|
      t.datetime :time
      t.index :vehicle_id
      t.index :attendant_id
      t.string :parking_spot

      t.timestamps
    end
    add_index :check_outs, :attendant
    add_index :check_outs, :vehicle
  end
end
