class ReservationsController < ApplicationController
  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.save!
    redirect_to dashboard_path

    # not sure if this path is alright?
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :status, :message)
  end

end
