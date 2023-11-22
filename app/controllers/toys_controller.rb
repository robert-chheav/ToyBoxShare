class ToysController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find(params[:id])
    @markers = @toys.geocoded.map do |toy|
      {
        lat: toy.latitude,
        lng: toy.longitude
        info_window_html: render_to_string(partial: "info_window", locals: {toy: toy})
        marker_html: render_to_string(partial: "marker")
      }
    end
    @dates_availability = Reservation.pluck(:booking_date_start).map { |date| date.strftime(" %Y-%m-%e") }
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.user = current_user
    if @toy.save
      redirect_to toys_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @toy = Toy.find(params[:id])
  end

  def update
    @toy = Toy.find(params[:id])
    @toy.update(toy_params)
    redirect_to toy_path(@toy)
  end

  def destroy
    @toy = Toy.find(params[:id])
    @toy.destroy
    redirect_to toys_path, status: :see_other
  end

  private

  def toy_params
    params.require(:toy).permit(:name, :price, :description, :location, :age)
  end
end
