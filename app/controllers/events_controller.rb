class EventsController < ApplicationController
  def index
    @events = Event.where("events.place LIKE ?", params[:search])
    redirect_to events_path
  end

  def show
    @event = Event.find(params[:id])
  end
end
