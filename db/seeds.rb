# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Reservation.destroy_all
Event.destroy_all

Event.create(place: "Amsterdam", streetname: "Nassaukade 370", title: "Vegan Party", description: "sadflkjsdf", meal: "breakfast", guest: "28")
