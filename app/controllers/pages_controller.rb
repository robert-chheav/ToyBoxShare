class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @home_toys = Toy.all
  end
  
  def dashboard
    @reservations = current_user.reservations
  end

end
