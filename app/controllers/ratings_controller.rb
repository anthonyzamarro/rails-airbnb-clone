class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.create(ratings_params)
    redirect_to profile_path(current_user)
  end

  def ratings_params
    params.require(:rating).permit(:rating, :id)
  end
end
