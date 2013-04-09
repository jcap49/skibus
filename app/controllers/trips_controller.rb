require 'csv'
class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def show
    @trip = Trip.find(params[:id])
    @guest_infos = @trip.guest_infos
    # list all the guests
  end

  def find_trip
  end


  def create
    # binding.pry
    @trip = Trip.create!(params[:trip])
    parse_csv

    @trip.save
    if @trip.save
      flash[:success] = "Trip successfully added!"
      redirect_to root_url
    else
      render :action => "checkin"
    end
  end

  private
  def file
    params[:file].open
  end

  def parse_csv
    CSV.foreach(file, headers: true, skip_blanks: true) do |row|
      add_to_database(row)
    end
  end

  def add_to_database(row)
    params = {
      trip: @trip,
      first_time: row["New"].present?,
      first_name: row["First Name"],
      last_name: row["Last Name"],
      city: row["City"],
      age: row["Age"],
      ticket: row["Ticket"],
      phone: row["Phone"],
    }
    GuestInfo.create!(params)
  end
end
