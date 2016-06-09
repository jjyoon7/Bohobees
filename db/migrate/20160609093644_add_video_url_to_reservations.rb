class AddVideoUrlToReservations < ActiveRecord::Migration
  def change
    add_column :reservations, :video_url, :string
  end
end
