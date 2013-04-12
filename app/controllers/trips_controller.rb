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
    @guest_infos = @trip.guest_infos.order("last_name ASC")


    @checked_in_morning_count = GuestInfo.where('checked_in_morning = true').count
    @checked_in_afternoon_count = GuestInfo.where('checked_in_afternoon = true').count

    # @bus_only_count                = GuestInfo.checked_in_morning.where(:ticket => "BUSONLY").count
    # @ticket_and_bus                = GuestInfo.checked_in_morning.where(:ticket => "").count
    # @ticket_and_ski_rental_count   = GuestInfo.checked_in_morning.where(:ticket => "TIXnSKIRENT").count
    # @ticket_and_lunch_count        = GuestInfo.checked_in_morning.where(:ticket => "TICKET LUNCH18").count
    # @ticket_and_board_rental_count = GuestInfo.checked_in_morning.where(:ticket => "TIXnSNOWRENT").count
    # @ticket_lunch_board_lesson     = GuestInfo.checked_in_morning.where(:ticket => "SNOWPKGBEG2 LUNCH18").count

    @grouped_tickets = GuestInfo.checked_in_morning.group(:ticket).count(:id)
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
      ticket: row["Ticket"].to_s.strip,
      phone: row["Phone"],
    }
    GuestInfo.create!(params)
  end
end
