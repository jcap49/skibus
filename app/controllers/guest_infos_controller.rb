class GuestInfosController < ApplicationController

  def new
    @guest_info = GuestInfo.new
  end

  def index
  end

  def create
    @guest_info = GuestInfo.new(params[:guest_info])
    @trip = Trip.find(params[:guest_info][:trip_id])
    @guest_info.trip = @trip

    if @guest_info.save
      flash[:success] = "Guest has been successfully registered!"
      redirect_to new_charge_path
    else
      redirect_to # add warning/fatal message & proper redirect location
    end
  end

  def checked_in_morning
    @guest_info = GuestInfo.find(params[:id])
    @guest_info[:checked_in_morning] = true
    @guest_info.save

    if @guest_info.save
      flash[:success] = "Guest successfully checked in!"
      redirect_to trip_path(@guest_info.trip)
    else
      render :action => "checkin"
    end
  end

  def checked_in_afternoon
    @guest_info = GuestInfo.find(params[:id])
    @guest_info[:checked_in_afternoon] = true
    @guest_info.save

    if @guest_info.save
      flash[:success] = "Guest successfully checked in!"
      redirect_to trip_path(@guest_info.trip)
    else
      render :action => "checkin"
    end
  end
end


