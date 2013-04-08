class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :name
      t.date :departure_date

      t.timestamps
    end
  end
end
