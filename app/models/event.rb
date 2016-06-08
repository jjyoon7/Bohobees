class Event < ActiveRecord::Base
  belongs_to :user
  has_many :reservations

  # def pending_reservations
  #   self.reservations.where(status: "pending")
  # end
end
