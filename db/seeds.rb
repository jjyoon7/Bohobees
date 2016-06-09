# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  User.create(first_name: first_name, last_name: last_name)
end

20.times do
  title = Faker::Book.title
  place = Faker::Address.city
  guest = Faker::Number.between(1, 10)
  meal = "dinner"
  Event.create(title: title, place: place, meal: meal, guest: guest)
end

Event.create(place: "Amsterdam", title: "Le Wagon Batch 25 Meet Up", description: "Coolest dinnerparty ever. Ya know.", meal: "dinner", guest: "4")
Event.create(place: "Amsterdam", title: "Vegan Party", description: "sadflkjsdf", meal: "breakfast", guest: "28")
Event.create(place: "Amsterdam", title: "Italian Cuisine", description: "Anything", meal: "dinner", guest: "3")
Event.create(place: "Amsterdam", title: "Burger time!", description: "I am the best chef", meal: "lunch", guest: "2")
Event.create(place: "Amsterdam", title: "Boozy breakfast", description: "Very nice garden to have a great breakfast", meal: "breakfast", guest: "2")
Event.create(place: "Amsterdam", title: "Libanese food", description: "sdfksdf", meal: "dinner", guest: "2")
Event.create(place: "Amsterdam", title: "Healthy breakfast", description: "sdfsdf", meal: "breakfast", guest: "6")
Event.create(place: "Amsterdam", title: "Lunchtime!", description: "asdlld", meal: "lunch", guest: "4")
