class BookingsController < ApplicationController
  before_action :set_listing, only:[:new, :create]
  def index
    @bookings = Booking.where(user_id: current_user.id)
    @listings = Listing.where(user_id: current_user.id)
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.listing = @listing
    @booking.user = current_user
    @booking.total_price = (@booking.end_date.to_date - @booking.start_date.to_date) * @listing.price_per_night
    if @booking.save
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_listing
    @listing = Listing.find(params[:listing_id])
  end

  def booking_params
    params.require(:booking).permit(:num_of_pets, :pet_type, :start_date, :end_date)
  end
end
