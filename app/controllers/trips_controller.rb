class TripsController < ApplicationController
  before_action :authenticate_user!

  def create
    @trip = current_user.trips.new(trip_params)
    if @trip.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @trips = current_user.trips.all
    @pin_notes = current_user.pin_notes.all
  end

  def new
    @trip = current_user.trips.new
  end

  def show
    @trip = get_trip(params[:id])
    @events = @trip.events
  end

  def edit
    @trip = get_trip(params[:id])
  end

  def update
    @trip = get_trip(params[:id])
    if @trip.update(trip_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  def destroy
    @trip = get_trip(params[:id])
    @trip.destroy
    redirect_to root_path
  end

  private

  def get_trip(id)
    current_user.trips.find(id)
  end

  def trip_params
    params.require(:trip).permit(:name, :start, :end)
  end
end
