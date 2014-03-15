class CreateTableSeats < ActiveRecord::Migration
  def change
    create_table :table_seats do |t|
      t.integer :row
      t.integer :column
      t.references :flight, index: true
      t.references :user, index: true
      t.string :reseverd, default: 'free'
    end
  end
end
