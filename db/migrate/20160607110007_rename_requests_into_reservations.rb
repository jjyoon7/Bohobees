class RenameRequestsIntoReservations < ActiveRecord::Migration
  def change
    rename_table :requests, :reservations
  end
end
