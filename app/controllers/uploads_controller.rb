require 'csv'

class UploadsController < ApplicationController

  def create
    # binding.pry
    @trip = Trip.create!(name: params[:upload][:bus_name])
    parse_csv
  end

  private
  def file
    params[:upload][:file].open
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
