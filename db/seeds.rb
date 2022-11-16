# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "japanese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian"}
chicken_poulet = {name: "Chicken Poulet", address: "Heaven", category: "french"}
si_bon_dasie = {name: "Si Bon d'Asie", address: "Parmentier", category: "chinese"}
etoile_de_mer = {name: "L'Etoile de Mer", address: "Un peu loin", category: "chinese"}

[dishoom, pizza_east, chicken_poulet, si_bon_dasie, etoile_de_mer].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
