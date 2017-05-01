class RemoveColumnsV2 < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :shift_id, :references
  end
end
