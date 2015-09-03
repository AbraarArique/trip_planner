class TripPlansController < ApplicationController
  before_action :setup_sidekiq

  def create
    @day = Day.find_by(day: params[:trip_plan][:date])
    if @day
      @trip_plan = @day.trip_plans.build(trip_plan_params)
    else
      @day = Day.create(day: params[:trip_plan][:date])
      @trip_plan = @day.trip_plans.build(trip_plan_params)
    end
    if @trip_plan.save
      redirect_to new_trip_plan_place_path(@trip_plan)
    else
      render 'new'
    end
  end

  def new
    @trip_plan = TripPlan.new
  end

  def edit
    @trip_plan = get_trip_plan(params[:id])
  end

  def show
    @trip_plan = get_trip_plan(params[:id])
  end

  def update
    @trip_plan = get_trip_plan(params[:id])
    if @trip_plan.update(trip_plan_params)
      redirect_to @trip_plan
    else
      render 'edit'
    end
  end

  def destroy
    @trip_plan = get_trip_plan(params[:id])
    @trip_plan.destroy
    redirect_to trip_plans_path
  end

  private

    def get_trip_plan(id)
      TripPlan.find(id)
    end

    def trip_plan_params
      params.require(:trip_plan).permit(:title, :date, :time, :duration, :notes)
    end

end