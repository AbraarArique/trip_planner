class EventsController < ApplicationController
  before_action :authenticate_user!

  def create
    @trip = Trip.find(params[:trip_id])
    @event = @trip.events.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @event = @trip.events.new
  end

  def edit
    @trip = Trip.find(params[:trip_id])
    @event = @trip.events.find(params[:id])
  end

  def show
    @trip = Trip.find(params[:trip_id])
    @event = @trip.events.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:trip_id])
    @event = @trip.events.find(params[:id])
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:trip_id])
    @event = @trip.events.find(params[:id])
    @event.destroy
    redirect_to root_path
  end

  private

    def event_params
      params.require(:event).permit(:title, :date, :time, :duration, :notes)
    end

end
