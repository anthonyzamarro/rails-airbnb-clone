class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating: params[:id], ratings_params)
    if @rating.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def ratings_params
    params.require(:rating).permit(:rating, :id)
  end
end
