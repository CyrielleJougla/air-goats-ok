# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Goat.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?


user1 = User.create!(first_name:"Louis", last_name:"Dupont", email:"louis@gmail.com", password:"chevre", address:"Marseille", phone:"0678988778", description:"j'adore les chevres")
user2 = User.create!(first_name:"Laura", last_name:"Durand", email:"laura@gmail.com", password:"chevre", address:"Toulon", phone:"0678988778", description:"j'adore les chevres moi aussi")
puts "users created"
goat1 = Goat.create!(name:"Blandine", price: 4, age: 3, race: "naine", appetite: "affamée", bonus: "toute douce", description:"Blandine est trop mignonne et aime les enfants", user: user1)
goat2 = Goat.create!(name:"Blanchette", price: 4, age: 2, race: "angora", appetite: "elle dévore", bonus: "trop cute", description:"Blanchette nettoie vos prés comme personne", user: user2)
goat3 = Goat.create!(name:"Popo", price: 1, age: 3, race: "Alpines", appetite: "elle dévore", bonus: "trop cute", description:"Blanchette nettoie vos prés comme personne", user: user2)
goat4 = Goat.create!(name:"Coco", price: 1, age: 3, race: "Alpines", appetite: "elle dévore", bonus: "trop cute", description:"Blanchette nettoie vos prés comme personne", user: user2)


puts "goats created"
