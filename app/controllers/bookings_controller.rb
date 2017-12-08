class BookingsController < ApplicationController
  before_action :set_booking, only: [ :accept, :cancel, :decline ]
  before_action :set_user, only: [ :create ]
  before_action :set_dog, only: [ :create ]
  def create
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = @user
    @booking.status = 'pending'
    if @booking.save
      redirect_to profile_path
    else
      render 'dogs/index'
    end
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

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end

  def set_user
    @user = current_user
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date)
  end
end
