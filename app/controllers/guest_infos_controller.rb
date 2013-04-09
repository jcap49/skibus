class GuestInfosController < ApplicationController

  @checked_in_count = GuestInfo.where('check_in = true').count

  def new
    @guest_info = GuestInfo.new
  end

  def check_in
    @guest_info = GuestInfo.find(params[:id])
    @guest_info[:check_in] = true
    @guest_info.save

    if @guest_info.save
      flash[:success] = "Guest successfully checked in!"
      redirect_to "/trips/#{@trip_id}"
    else
      render :action => "checkin"
    end
  end

  def count_checked_in_guests(var)
    var = GuestInfo.all
    unless var[:check_in].eql?(nil)
      var[:check_in].count
    end
  end
end


