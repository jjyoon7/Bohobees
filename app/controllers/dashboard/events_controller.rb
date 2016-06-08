class Dashboard::EventsController < ApplicationController
  # before_action :find_event, only [:show, :create, :edit, :update, :destroy]

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new()
  end

  def create
    @event = Event.new(event_validation)
    @event.save
    redirect_to event_path(@event)
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_validation)
    redirect_to dashboard_event_path
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to dashboard_events_path
  end

  private
  # def find_event
  #   @event = Event.find(params[:id])
  # end

  def event_validation
    params.require(:event).permit(:date, :user_id, :guest, :meal, :title, :place, :description)
  end
end
