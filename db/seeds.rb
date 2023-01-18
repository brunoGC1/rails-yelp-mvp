# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'

puts "Celaning database"
Restaurant.destroy_all

puts "Creating restaurants"

Cate = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  item = Cate[rand(Cate.length)]
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_name,
    phone_number: Faker::PhoneNumber.phone_number,
    category: item
  )
  puts "Restaurant with id: #{restaurant.id} has been created"
end

puts "Finished!"
