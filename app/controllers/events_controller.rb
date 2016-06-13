class EventsController < ApplicationController
  before_action :authenticate_user!, :set_layout

  def create
    @trip = current_user.trips.find(params[:trip_id])
    @event = @trip.events.build(event_params)
    if @event.save
      redirect_to trip_event_path(@trip, @event)
    else
      render 'new'
    end
  end

  def new
    @trip = current_user.trips.find(params[:trip_id])
    @event = @trip.events.build
  end

  def edit
    @trip = current_user.trips.find(params[:trip_id])
    @event = get_event(params[:id])
  end

  def show
    @event = get_event(params[:id])
  end

  def update
    @event = get_event(params[:id])
    if @event.update(event_params[:id])
      redirect_to trip_event_path(@trip, @event)
    else
      render 'edit'
    end
  end

  def destroy
    @event = get_event(params[:id])
    @event.destroy
    redirect_to root_path
  end

  private

  def get_event(id)
    current_user.trips.find(params[:trip_id]).events.find(id)
  end

  def event_params
    params.require(:event).permit(:title, :date, :time, :duration, :place, :notes)
  end
end
