class Charge < ActiveRecord::Base
  attr_accessible :customer, :amount, :description, :currency

end
