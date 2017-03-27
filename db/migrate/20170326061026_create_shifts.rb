class CreateShifts < ActiveRecord::Migration[5.0]
  def change
    create_table :shifts do |t|
      t.time :start_time, strftime("%I:%M %p")
      t.time :end_time

      t.timestamps
    end
  end
end

