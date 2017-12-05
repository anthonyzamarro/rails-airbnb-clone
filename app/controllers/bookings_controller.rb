class BookingsController < ApplicationController
  before_action :set_booking, only: [ :accept, :cancel, :decline ]
  def create
    @booking = Booking.new(user: current_user, dog: set_dog, status: 'pending')
    redirect_to profile_path(current_user)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def accept
    @booking.status = 'accept'
    if @booking.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def cancel
    @booking.status = 'cancel'
    if @booking.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def decline
    @booking.status = 'decline'
    if @booking.save
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
