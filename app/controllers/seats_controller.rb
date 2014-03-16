class SeatsController < ApplicationController
  before_action :set_seat, only: [:update]
  respond_to :json

  def index
    @flight = Flight.find params[:flight_id]
    @seats = @flight.seats.order(:row, :column).all

    respond_with @seats
  end

  def update
    respond_to do |format|
      if @seat.update(seat_params)
        format.json { render json: @seat }
      else
        format.json { render json: @seat, status: :unprocessable_entity }
      end
    end

  end


  def set_seat
    @seat = Seat.find(params[:id])
  end

  def seat_params
    params.require(:seat).permit(:user_id, :reseverd)
  end
end