class GuestInfosController < ApplicationController

  def new
    @guest_info = GuestInfo.new
  end

  # this handles actually submitting a check in form
  def check_in
    # find the guest info by id (params[:id])
    # update the check_in value
    # save
  end

end
