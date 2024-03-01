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
    @comic = Comic.find(params[:comic_id])
    @booking.comic = @comic
    @booking.status = "Pending"
    if @booking.save!
      #redirect_to booking_path(@booking)
      redirect_to profile_path()

    else
      redirect_to comic_path(@comic)
    end
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(status:params[:status])
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to profile_path, status: :see_other
  end

  private

  def set_comic
    @comic = Comic.find(params[:comic_id])
  end

  def booking_params
    params[:booking].permit(:start_date, :end_date, :status)
  end
end
