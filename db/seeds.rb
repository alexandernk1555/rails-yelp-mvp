# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "58239092342", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "40238589230", category: "chinese"}
pizza_hut = {name: "Pizza Hut", address: "Nice Street", phone_number: "892384293849", category: "chinese"}
mama_mia = {name: "Mama mia", address: "Italy Street", phone_number: "23421049239", category: "chinese"}
kfc = {name: "KFC", address: "Jules Ave", phone_number: "69230293042", category: "chinese"}

[dishoom, pizza_east, pizza_hut, mama_mia, kfc].each do |attributes|
  restaurant = Restaurant.create!(attributes)
end
