class PagesController < ApplicationController
  skip_before_action :authenticate_registration!
  def home
    @dogs = Dog.all
  end
end
