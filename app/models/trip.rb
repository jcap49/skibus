class Trip < ActiveRecord::Base
  has_many :guest_infos

  attr_accessible :name, :bus_name
end
