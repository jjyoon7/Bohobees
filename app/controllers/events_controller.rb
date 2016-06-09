class EventsController < ApplicationController
  def index
    @event = Event.find(params[:id])
    @events = Event.where("events.place LIKE ?", params[:search, :id])
  end

  def show
    @event = Event.find(params[:id])
  end
end
