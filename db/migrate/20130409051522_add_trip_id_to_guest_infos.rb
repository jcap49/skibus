class AddTripIdToGuestInfos < ActiveRecord::Migration
  def change
    add_column :guest_infos, :trip_id, :integer
  end
end
