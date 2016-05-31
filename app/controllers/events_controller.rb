class EventsController < ApplicationController
  layout 'app'
  before_action :authenticate_user!

  def create
    @trip = current_user.trips.find(params[:trip_id])
    @event = @trip.events.new(event_params)
    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def new
    @trip = current_user.trips.find(params[:trip_id])
    @event = @trip.events.new
  end

  def edit
    @event = get_event(params)
  end

  def show
    @event = get_event(params)
  end

  def update
    @event = get_event(params)
    if @event.update(event_params)
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event = get_event(params)
    @event.destroy
    redirect_to root_path
  end

  private

  def get_event(id)
    current_user.trips.find(params[:trip_id]).events.find(id)
  end

  def event_params
    params.require(:event).permit(:title, :date, :time, :duration, :notes)
  end
end
