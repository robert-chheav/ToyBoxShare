class ReservationsController < ApplicationController
    before_action :set_toy, only: [:new, :create]

    def index
        @reservations = Reservation.all
    end
    def new
        @reservation = Reservation.new
        @reservation.toy = @toy
    end 
    def create
        @reservation = Reservation.new(reservation_params)
        @reservation.toy = @toy
        @reservation.user = current_user
        if @reservation.save
            redirect_to toys_path
        else
            render :new, status: :unprocessable_entity
        end
    end
    # def show
    #     @reservation = 
    # end

    # @toy = Toy.find(params[:toy_id])
    # @review = Review.new

    private
    def set_toy
        @toy = Toy.find(params[:toy_id])
    end
    def reservation_params
        params.require(:reservation).permit(:booking_date_start, :booking_date_end)
    end
end
