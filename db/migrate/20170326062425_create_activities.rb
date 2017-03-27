class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.decimal :price, precision: 8, scale: 2
      t.time :duration

      t.timestamps
    end
  end
end
