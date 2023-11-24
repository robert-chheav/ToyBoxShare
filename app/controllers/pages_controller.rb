class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @home_toys = Toy.limit(3)
  end

  def dashboard
    @reservations = current_user.reservations
    @toys = Toy.where(user_id: current_user)
    @toy = Toy.new
  end

end
