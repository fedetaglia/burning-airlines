class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :number
      t.string :origin
      t.string :destination
      t.timestamp :date
      t.references :plane, index: true

      t.timestamps
    end
  end
end
