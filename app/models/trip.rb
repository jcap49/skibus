class Trip < ActiveRecord::Base
  has_many :guest_infos

  attr_accessible :departure_date, :name
end
