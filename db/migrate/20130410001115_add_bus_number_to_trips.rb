class AddBusNumberToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :bus_number, :integer
  end
end
