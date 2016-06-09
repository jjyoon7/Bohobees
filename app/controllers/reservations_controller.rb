class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
    @event = Event.find(params[:event_id])
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save!
    redirect_to dashboard_path
    # not sure if this path is alright?
  end

  def index
    @reservations = Reservation.all
  end

  def show
    @reservation = Reservation.find(params[:id])
  end

  def cancel
    @reservation = Reservation.find(params[:id])
    @reservation.status = "canceled"
    @reservation.save!
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :status, :message)
  end

end
