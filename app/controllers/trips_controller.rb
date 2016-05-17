class TripsController < ApplicationController
  before_action :authenticate_user!

  def index
    @trips = Trip.all
    @pin_notes = PinNote.all
  end

  def show
    @trip = Trip.find(params[:id])
    @events = @trip.events
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to root_path
  end
end
