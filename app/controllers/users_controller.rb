class UsersController < ApplicationController
  def profile
    @dogs = current_user.dogs
  end

  def update
    @user = User.update(users_params)
    redirect_to profile_path
  end

  def destroy
   current_user.destroy
   redirect_to root_path
  end

  private

  def users_params
    params.require(:user).permit(:name, :city)
  end
end
