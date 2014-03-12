class FixPlaneColumnNameInFlights < ActiveRecord::Migration
  def change
    rename_column :flights, :plane_id, :airplane_id
  end
end
