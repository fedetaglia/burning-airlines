class CreateAriplanes < ActiveRecord::Migration
  def change
    create_table :ariplanes do |t|
      t.string :name
      t.integer :rows
      t.string :columns, :varchar(1)

      t.timestamps
    end
  end
end
