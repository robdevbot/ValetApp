class CreateCheckIns < ActiveRecord::Migration[7.0]
  def change
    create_table :check_ins do |t|
      t.datetime :time
      t.string :attendant
      t.string :parking_spot
      t.string :string

      t.timestamps
    end
    add_index :check_ins, :attendant
  end
end
