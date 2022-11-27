class CreateAttendants < ActiveRecord::Migration[7.0]
  def change
    create_table :attendants do |t|
      t.string :name

      t.timestamps
    end
  end
end
