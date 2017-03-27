class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.string :customer_name
      t.time :start_time
      t.date :date
      t.references :employee, foreign_key: true
      t.references :activity, foreign_key: true
      t.decimal :price, precision: 8, scale: 2
      t.integer :duration

      t.timestamps
    end
  end
end
