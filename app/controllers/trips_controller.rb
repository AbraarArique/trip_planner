class TripsController < ApplicationController
  before_action :authenticate_user!, :set_layout

  def create
    @trip = current_user.trips.build(trip_params)
    if @trip.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @trips = current_user.trips.all
    @notes = current_user.notes.all
  end

  def new
    @trip = current_user.trips.build
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
    params.require(:trip).permit(:name, :start_date, :end_date)
  end
end
