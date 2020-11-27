# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require "open-uri"

Goat.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?


user1 = User.create!(first_name:"Cyrielle", last_name:"Jougla", email:"cyrielle@gmail.com", password:"chevre", address:"Marseille", phone:"0678988778", description:"j'adore les chevres")
user2 = User.create!(first_name:"Periers", last_name:"Durand", email:"sophie@gmail.com", password:"chevre", address:"Toulon", phone:"0678988778", description:"j'adore les chevres moi aussi")
user3 = User.create!(first_name:"Vincent", last_name:"Fiorini", email:"vincent@gmail.com", password:"chevre", address:"Toulon", phone:"0678988778", description:"j'adore les chevres moi aussi")

puts "users created"

file = URI.open("https://res.cloudinary.com/drnblm552/image/upload/v1606398133/sj4wp5w5f5zmzoy60hqrm8ccfkg6.jpg")
goat1 = Goat.create!(name:"Blanchette", price: 4, age: 3, race: "alpine", appetite: "a les crocs", bonus: "d'une douceur incomparable", description:"La fameuse chèvre de M.Seguin dévorera vos mauvaises herbes comme personne.", user: user1)
goat1.picture.attach(io: file, filename: 'goat1.png', content_type: 'image/png')

# goat2 = Goat.create!(name:"Double Trouble", price: 6, age: 2, race: "naine", appetite: "trop trop la dalle", bonus: "les plus belles du quartier", description:"Ne vous laissez pas attendrir par leurs petites bouilles. Ces biquettes louées par deux ne feront qu'une bouchée de votre jardin, terrain ou pré !", picture:"https://res.cloudinary.com/drnblm552/image/upload/v1606475193/doubletrouble_xhfjqe.jpg", user: user1)
# goat3 = Goat.create!(name:"Mimi", price: 2, age: 1, race: "naine", appetite: "a les crocs", bonus: "le bébé le plus attendrissant", description:"Mimi est une adorable petite chèvre d'à peine un an. Elle sera parfaite pour débrouissailler vos jardin de villes et petits terrains", picture:"https://res.cloudinary.com/drnblm552/image/upload/v1606476126/babygot_xnxrtx.jpg", user: user1)
# goat4 = Goat.create!(name:"Martine", price: 6, age: 5, race: "poitevine", appetite: "dévoreuse de prés", bonus: "s'entend très bien avec les enfants", description:"Martine, c'est la Rolls Royce des tondeuse. Très efficace, elle broute jusqu'à 2 hectares par jour.", picture:"https://res.cloudinary.com/drnblm552/image/upload/v1606476142/herbe_goat_owebqp.jpg", user: user1)
# goat5 = Goat.create!(name:"Brownie", price: 3, age: 4, race: "provençale", appetite: "trop trop la dalle", bonus: "son regard vous fera fondre", description:"Brownie est une petite biquette bien dans ses pattes. L'avoir dans son jardin est un réel plaisir.", picture:"https://res.cloudinary.com/drnblm552/image/upload/v1606476126/goatgoat_vhjgm2.jpg", user: user1)
# goat6 = Goat.create!(name:"Kiki", price: 3, age: 2, race: "alpine", appetite: "trop trop la dalle", bonus: "toute mimi", description:"Petite mais puissante ! Coco a la dalle et ça se voit !", picture:"https://res.cloudinary.com/drnblm552/image/upload/v1606476126/goatt_ln9lp6.jpg", user: user1)
# goat7 = Goat.create!(name:"Maximator", price: 10, age: 6, race: "alpine", appetite: "dévoreuse de prés", bonus: "fait aussi chien de garde", description:"Maximator n'est pas une chèvre comme les autres. Issue d'une croisement entre une chèvre alpine et un ours polaire, elle ne fera qu'une bouchée de vos terrains les plus grands, ainsi que de vos ennemis", picture:"https://res.cloudinary.com/drnblm552/image/upload/v1606477730/maxx_dfjuvt.jpg", user: user1)
# goat8 = Goat.create!(name:"Bobette", price: 5, age: 4, race: "angora", appetite: "a les crocs", bonus: "peut vous tricotter un pull", description:"Bobette est une chèvre très cool qui prend la vie comme elle vient.", picture:"https://res.cloudinary.com/drnblm552/image/upload/v1606477734/angora_h9zdcj.jpg", user: user1)
# goat9 = Goat.create!(name:"Blanchette", price: 4, age: 3, race: "alpine", appetite: "a les crocs", bonus: "d'une douceur incomparable", description:"La fameuse chèvre de M.Seguin dévorera vos mauvaises herbes comme personne.", picture:"https://res.cloudinary.com/drnblm552/image/upload/v1606398133/sj4wp5w5f5zmzoy60hqrm8ccfkg6.jpg", user: user1)

puts "goats created"
