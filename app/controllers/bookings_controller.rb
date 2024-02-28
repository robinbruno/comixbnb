class BookingsController < ApplicationController

  before_action :set_booking, only: %i[ create new ]

  def index
    @bookings = Booking.all
  end

  def show
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

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])

  end

  def set_comic
    @comic = Comic.find(params[:comic_id])
  end

  def booking_params
    params[:booking].permit(:start_date, :end_date)
  end
end
