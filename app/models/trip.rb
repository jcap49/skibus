class Trip < ActiveRecord::Base
  has_many :guest_infos

  attr_accessible :name, :departure_date, :bus_number

  def name_with_bus_number_and_departure_date
    "#{departure_date} #{name} - Bus #{bus_number}"
  end

  def self.active
    # +/- 1 day from today (use a active record relation, NOT RUBY)
    scoped
  end
end
