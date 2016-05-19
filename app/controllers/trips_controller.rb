class TripsController < ApplicationController
  before_action :authenticate_user!, except: :password_reset

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

  def password_reset
    render 'password_reset'
  end

  def recover
    @user = User.find_by_email(params[:email])
    if @user
      @user.send_reset_password_instructions
      flash[:notice] = 'Password reset instructions have been sent to your email address.'
    else
      flash[:alert] = 'Couldn\'t find an user with specified email address.'
    end
    redirect_to new_user_session_path
  end
end
