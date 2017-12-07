class UsersController < ApplicationController
  def profile
    redirect_to edit_user_path(current_user) if current_user.name == nil || current_user.city == nil
    @dogs = current_user.dogs
  end

  def update
    current_user.name = users_params[:name]
    current_user.city = users_params[:city]
    if current_user.save
      redirect_to profile_path
    else
      render :edit
    end
  end

  def destroy
    current_user.bookings.each do |booking|
      booking.status = 'cancel'
    end
   current_user.destroy
   current_user.registration.destroy
   redirect_to root_path
  end

  def set_name
    return current_user.first_name + " " + current_user.last_name if current_user.first_name
    return "Input name"
    # @new_name = "Input name"
    # @new_name = current_user.first_name + " " + current_user.last_name if current_user.first_name
  end
  helper_method :set_name

  private

  def users_params
    params.require(:user).permit(:name, :city)
  end
end
