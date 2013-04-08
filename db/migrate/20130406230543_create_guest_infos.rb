class CreateGuestInfos < ActiveRecord::Migration
  def change
    create_table :guest_infos do |t|
      t.boolean :first_time
      t.string :first_name
      t.string :last_name
      t.string :city
      t.integer :age
      t.string :ticket
      t.integer :phone

      t.timestamps
    end
  end
end
