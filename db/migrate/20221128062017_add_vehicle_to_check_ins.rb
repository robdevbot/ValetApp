class AddVehicleToCheckIns < ActiveRecord::Migration[7.0]
  def change
    add_column :check_ins, :vehicle, :string
    add_index :check_ins, :vehicle
  end
end
