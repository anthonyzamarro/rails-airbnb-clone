class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dogs_params)
    @dog.user = current_user
    if @dog.save
      redirect_to profile_path
    else
      render :new
    end
  end

  def update
    @dog = Dog.update(dogs_params)
    redirect_to profile_path
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to profile_path
  end

  private

  def dogs_params
    params.require(:dog).permit(:name, :species, :photo)
  end
end
