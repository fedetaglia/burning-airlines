class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table :table_seats, :seats
  end
end
