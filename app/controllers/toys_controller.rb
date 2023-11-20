class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find(params[:id])
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

  private

  def toy_params
    params.require(:toy).permit(:name, :price, :description, :location, :age)
  end

end
