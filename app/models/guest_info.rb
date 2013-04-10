class GuestInfo < ActiveRecord::Base
  belongs_to :trip

  attr_accessible :age, :city, :first_name, :first_time, :last_name
  attr_accessible :phone, :ticket, :trip, :check_in, :destination, :bus_number
end
