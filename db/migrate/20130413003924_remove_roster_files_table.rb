class RemoveRosterFilesTable < ActiveRecord::Migration
  def up
    drop_table :roster_files
  end

  def down
    add_table :roster_files
  end
end
