class RemoveColumnsv1 < ActiveRecord::Migration[5.0]
  def change
    remove_column :appointments, :start_time, :time
    remove_column :appointments, :duration, :integer
    remove_column :activities, :duration, :integer
  end
end
