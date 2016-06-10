class Dashboard::ReservationsController < ApplicationController
 def cancel
  raise "jj"
  @reservation = Reservation.find(params[:id])
  @reservation.status = "canceled"
  @reservation.save!
  redirect_to dashboard_path
end
end
