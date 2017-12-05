class PagesController < ApplicationController
  def home
    @dogs = Dogs.all.first(10)
  end
end
