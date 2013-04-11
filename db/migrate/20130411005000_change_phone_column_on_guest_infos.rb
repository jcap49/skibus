class ChangePhoneColumnOnGuestInfos < ActiveRecord::Migration
  def up
    change_column :guest_infos, :phone, :string
  end

  def down
    change_column :guest_infos, :phone, :integer
  end
end
