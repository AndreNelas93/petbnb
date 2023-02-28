class BookingsController < ApplicationController
  def index
    @bookings = Booking.where(user_id: current_user)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.listing_id = @listing
    @booking.user_id = current_user
    if @booking.save
      redirect_to listings_path
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:num_of_pets, :pet_type, :start_date, :end_date, :total_price, :user_id, :listing_id)
  end
end
