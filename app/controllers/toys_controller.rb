class ToysController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:age].present? && params[:age] == "0-6 MONTHS"
      @toys = Toy.age_0_6_MONTHS
    elsif params[:age].present? && params[:age] == "6-12 MONTHS"
      @toys = Toy.age_6_12_MONTHS
    elsif params[:age].present? && params[:age] == "1-3 YEARS"
      @toys = Toy.age_1_3_YEARS
    elsif params[:age].present? && params[:age] == "3-6 YEARS"
      @toys = Toy.age_3_6_YEARS
    elsif params[:age].present? && params[:age] == "6-12 YEARS"
      @toys = Toy.age_6_12_YEARS
    elsif params[:age].present? && params[:age] == "12+ YEARS"
      @toys = Toy.age_12_YEARS
    else
      @toys = Toy.all
    end
  end

  def show
    @toy = Toy.find(params[:id])
    # @markers = [@toy].map do |toy|
    #   {
    #     lat: toy.latitude,
    #     lng: toy.longitude
    #     # info_window_html: render_to_string(partial: "info_window", locals: {toy: toy}),
    #     # marker_html: render_to_string(partial: "marker")
    #   }

    # end

    @markers = [
      {
        lat: @toy.latitude,
        lng: @toy.longitude,
        marker_html: render_to_string(partial: "marker")
      },
    ]

    @dates_availability = Reservation.pluck(:booking_date_start).map { |date| date.strftime(" %Y-%m-%e") }
  end

  def new
    @toy = Toy.new
  end

  def create
    @toy = Toy.new(toy_params)
    @toy.user = current_user
    if @toy.save
      redirect_to toy_path(@toy)
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
    params.require(:toy).permit(:name, :price, :description, :location, :age, :image_url)
  end
end
