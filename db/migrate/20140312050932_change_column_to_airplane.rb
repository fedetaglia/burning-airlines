class ChangeColumnToAirplane < ActiveRecord::Migration
  def change
    remove_column :airplanes, :columns
    add_column :airplanes, :columns, :integer
  end

end
