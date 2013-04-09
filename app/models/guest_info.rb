class GuestInfo < ActiveRecord::Base
  belongs_to :trip

  attr_accessible :age, :city, :first_name, :first_time, :last_name, :phone, :ticket, :trip, :check_in
end
