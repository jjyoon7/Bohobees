# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Reservation.destroy_all
Event.destroy_all

Event.create(date: "2016-06-10", place: "amsterdam", streetname: "Nassaukade 370", title: "Vegan Party", description: "Very healthy hipster breaky", meal: "breakfast", guest: "4")
Event.create(date: "2016-06-23", place: "amsterdam", streetname: "Tweede Schinkelstraat 29", title: "Le Wagon Dinner", description: "Dinner with the awesome batch 25", meal: "dinner", guest: "28")
Event.create(date: "2016-06-20", place: "amsterdam", streetname: "Leidseplein 31", title: "Boozy brunch", description: "Very nice brunch with loads of booze and poached eggs like you have never seen before", meal: "breakfast", guest: "6")
Event.create(date: "2016-06-14", place: "leeds", streetname: "1 Oxford Pl", title: "Burger Time!", description: "Best burgers in town! Possible to have vegetarian burgers as well. Just tell me!", meal: "lunch", guest: "2")
Event.create(date: "2016-06-29", place: "amsterdam", streetname: "Spuistraat 25", title: "Italian family dinner", description: "I'll make the best pasta, salads and fresh fish and meats! Italian family style with great italian wines.", meal: "dinner", guest: "4")

photo_path = Rails.root.join('db/seeds')

User.create(
  first_name: "Jay",
  last_name: "Yoon",
  photo: File.open(File.join(photo_path, 'jay.jpeg')),
  city: "Amsterdam"
)

User.create(
  first_name: "Natalia",
  last_name: "Zawada",
  photo: File.open(File.join(photo_path, 'natalia.jpeg')),
  city: "Amsterdam"
)

User.create(
  first_name: "Milou",
  last_name: "Schelling",
  photo: File.open(File.join(photo_path, 'IMG_1602.jpg')),
  city: "Amsterdam"
)

User.create(
  first_name: "Shannon",
  last_name: "Gray",
  photo: File.open(File.join(photo_path, 'shannon.jpeg')),
  city: "Amsterdam"
)

