class GuestInfoController < ApplicationController

  def list_guest_info
    @guest = GuestInfo.all
    @guest.each do |guest|
      puts @guest.first_name
      puts @guest.last_name
    end
  end

  def find_guest
    @guest = GuestInfo.find(params[:first_name])
  end

  # add checked in guests to an array
  # then count the total number in array
  # for calculate portion?
  def check_guest_in

  end

  def calculate_total_guests

  end

  def calculate_total_packages

  end
end
