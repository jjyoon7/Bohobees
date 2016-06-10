class AddNumberOfGuestsToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :no_guests, :integer
  end
end
