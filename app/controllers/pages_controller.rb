class PagesController < ApplicationController
  def home
  end

  def profile
    @mybookings = Booking.where(user: current_user)
    @mycomics = Comic.where(user: current_user)
    @pending_bookings = Booking.where(comic_id: @mycomics.pluck(:id), status: "pending")
  end
end
