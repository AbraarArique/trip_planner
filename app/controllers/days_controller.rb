class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])
    @trip_plans = @day.trip_plans
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to root_path
  end
end