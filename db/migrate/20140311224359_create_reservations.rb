class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :flight
      t.references :user
      t.integer :row
      t.string :column
      t.timestamps
    end
  end
end
