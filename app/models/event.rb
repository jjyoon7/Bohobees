class Event < ActiveRecord::Base
  belongs_to :user
  has_many :reservations

  geocoded_by :full_address
  after_validation :geocode, if: :streetname_changed?

  def full_address
    self.streetname + ',' + self.place
  end
end
