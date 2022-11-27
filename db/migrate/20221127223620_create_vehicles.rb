class CreateVehicles < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicles do |t|
      t.string :vin
      t.string :year
      t.string :make
      t.string :model
      t.string :trim

      t.timestamps
    end
  end
end
