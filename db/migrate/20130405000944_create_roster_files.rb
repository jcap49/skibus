class CreateRosterFiles < ActiveRecord::Migration
  def change
    create_table :roster_files do |t|

      t.timestamps
    end
  end
end
