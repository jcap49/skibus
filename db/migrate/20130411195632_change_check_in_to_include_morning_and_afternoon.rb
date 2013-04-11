class ChangeCheckInToIncludeMorningAndAfternoon < ActiveRecord::Migration
  def up
    remove_column :guest_infos, :check_in, :boolean
    add_column :guest_infos, :checked_in_morning, :boolean
    add_column :guest_infos, :checked_in_afternoon, :boolean
  end

  def down
    remove_column :guest_infos, :check_in, :boolean
  end
end
