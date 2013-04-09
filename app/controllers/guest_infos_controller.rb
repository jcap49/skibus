class GuestInfosController < ApplicationController

  @checked_in_count = GuestInfo.where('check_in = true').count

  def new
    @guest_info = GuestInfo.new
  end

  def index

  end

  def create
    @guest_info = GuestInfo.create!(params[:guest_info])

    @guest_info.save
    if @guest_info.save
      flash[:succes] = "Guest has been successfully registered!"
      redirect_to root_url
    else
      redirect_to # add warning/fatal message & proper redirect location
    end
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
end


