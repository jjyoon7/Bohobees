class DashboardController < ApplicationController
  def show
    @events = current_user.events
    @reservations = current_user.reservations
  end
end

