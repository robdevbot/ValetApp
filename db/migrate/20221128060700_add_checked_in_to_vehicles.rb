class AddCheckedInToVehicles < ActiveRecord::Migration[7.0]
  def change
    add_column :vehicles, :checkedin, :boolean
  end
end
