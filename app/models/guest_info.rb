class GuestInfo < ActiveRecord::Base
  belongs_to :trip

  attr_accessible :age, :city, :first_name, :first_time, :last_name
  attr_accessible :phone, :ticket, :trip, :check_in, :trip_id

  TICKET_PACKAGE_TYPES = {
    "Bus and Ticket" => "" ,
    "Bus only" => "BUSONLY",
    "Ride only" => "RIDEONLY",
  }

  def show_ticket_packages
   "#{TICKET_PACKAGE_TYPES.each {|key, value| puts "#{key}, #{value}"}}"
  end
end
