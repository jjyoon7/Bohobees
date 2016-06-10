class EventsController < ApplicationController
  def index
    @events = Event.where("events.place LIKE ?", params[:search].downcase)
    @markers = Gmaps4rails.build_markers(@events) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
    end

  end

  def show
    @event = Event.find(params[:id])
  end

end
