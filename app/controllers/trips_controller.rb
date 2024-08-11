class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user_id = current_user.id
    @trip.save
    redirect_to trips_path
  end

  def new
    @trip = Trip.new
  end

  def show
    @trip = Trip.find(params[:id])
    # unless current_user == @trip.user_id
    #   redirect_to trips_path
    # end
  end

  def edit

  end

  def destroy
    trip = Trip.find(params[:id])
      trip.destroy
      redirect_to trips_path

  end


  private

  def trip_params
    params.require(:trip).permit(:title, :explain, :address, :image )
  end

end
