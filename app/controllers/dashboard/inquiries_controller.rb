class Dashboard::InquiriesController < ApplicationController
  def index
    @event = Event.find(params[:event_id])
    # you need to give a :event_id to specifically call this controller
    @inquires = @event.reservations
    # @inquires = Event.pending_reservations
    # above is the method from event model
    # you are calling reservations on that specific event
  end

  def show
    @event = Event.find(params[:event_id])
    @inquiry = @event.reservations()
    redirect_to event_path
  end

  def accept
    @inquiry
  end

  def deny

  end
end
