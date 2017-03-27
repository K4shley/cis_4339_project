class AddTimeslotToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :timeslot, foreign_key: true
  end
end
