class Dashboard::ReservationsController < ApplicationController
 def cancel
  @reservation = Reservation.find(params[:id])
  @reservation.status = "canceled"
  @reservation.save!
  redirect_to dashboard_path
end
end
