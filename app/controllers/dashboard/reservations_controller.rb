class Dashboard::ReservationsController < ApplicationController
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
end
