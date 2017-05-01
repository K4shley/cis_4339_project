class DropShiftsTable < ActiveRecord::Migration[5.0]

      def up
        drop_table :shifts
      end

      def down
        create_table :shifts
      end
    end

