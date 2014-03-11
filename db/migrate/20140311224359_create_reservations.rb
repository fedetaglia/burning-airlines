class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.refereces :flight
      t.refereces :user
      t.integer :row
      t.string :column, :varchar(1)

      t.timestamps
    end
  end
end
