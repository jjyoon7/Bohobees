class Dashboard::InquiriesController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    # you need to give a :event_id to specifically call this controller
    @inquires = @event.reservations
    # @inquires = Event.pending_reservations
    # above is the method from event model
    # you are calling reservations on that specific event
  end

  def accept
    # I need to find a specific reservation on event as host click on the event
    # and change the status from pending to accept
    @event = Reservation.find(params[:id])
    @inquiry = @event.update(status: "accept")
  end

  def deny
     @event = Reservation.find(params[:id])
    @inquiry = @event.update(status: "deny")
  end
end
