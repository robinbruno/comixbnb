class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.comic = @comic

    if @booking.save
      redirect_to booking_path(@booking)

    else
      redirect_to boat_path(@comic)
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(status:params[:status])
    redirect_back(fallback_location: root_path)
  end

  def destroy
  end

  private

  def set_comic
    @comic = Comic.find(params[:comic_id])
  end

  def booking_params
    params[:booking].permit(:start_date, :end_date, :status)
  end
end
