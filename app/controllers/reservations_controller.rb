class ReservationsController < ApplicationController

  def new
    @event = event_params
    @reservation = Reservation.new(user_id: current_user.id, event_id: @event.id)
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
    @message = @reservation.message
    @approve = approve
    @disapprove = disapprove
  end

  def cancel
    @reservation = Reservation.find(params[:id])
    @reservation.status = "canceled"
    @reservation.save!
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :status, :message, :video_url, :event_id)
  end

  def event_params
    @event = Event.find(params[:event_id])
  end

end
