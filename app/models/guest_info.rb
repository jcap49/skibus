class GuestInfo < ActiveRecord::Base
  belongs_to :trip

  attr_accessible :age, :city, :first_name, :first_time, :last_name
  attr_accessible :phone, :ticket, :trip, :check_in, :trip_id


  TICKET_PACKAGE_TYPES = {
    "Bus and Ticket" => "",
    "Bus only" => "BUSONLY",
    "Ride only" => "RIDEONLY",
  }

  TICKET_PACKAGE_TYPES_BY_CODE = TICKET_PACKAGE_TYPES.invert

  TICKET_PACKAGE_PRICES = {
    "Bus and Ticket" => 13900,
    "Bus only" => 7900,
    "Ride only" => 4900
  }

  def show_ticket_prices
   "#{TICKET_PACKAGE_PRICES.each {|key, value| puts "#{key}, #{value}"}}"
  end

  def self.checked_in_morning
    where(checked_in_morning: true)
  end
end
