class Trip < ActiveRecord::Base
  has_many :guest_infos

  attr_accessible :name, :departure_date, :bus_number

  def name_with_bus_number_and_departure_date
    "#{departure_date} #{name} - Bus #{bus_number}"
  end
end
