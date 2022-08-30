# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
user1 = User.create!(email: "user1@gmail.com", password: "000000", nickname: "cassius")

# photo1 = photo_famille.create!( cl_image_tag: "https://res.cloudinary.com/dx8iv40ym/image/upload/v1660593607/development/86sfmqugfl3h6jx6bimx35owm08f.png")
# img_seed = cl_image_tag famille.photo_famille.o597royu6tdobg92sw8dcdqqapcp
# photo_famille: cl_image_tag famille.photo_famille.o597royu6tdobg92sw8dcdqqapcp,

puts "cleaning database..."
Famille.destroy_all

# puts "creating familles..."
# Famille.create!(user: user1, name: "LongBord", info: "Le longboard est un type de planche de surf bien particulier, qui permet une pratique différente de celle des plus petites planches. Les planches de longboard sont des planches plus longues que la moyenne.")
# Famille.create!(user: user1, name: "Evolutive", info: "Ce sont des planches de 1,90 à 2,20 m pour une largeur comprise entre 49 et 52 cm. Large, épaisse, ce style de planche est tolérant tout en offrant des possibiltés de manoeuvres étendues. Beaucoup de surfers moyens adoptent une évolutive comme petite planche même si cela manque un peu de radicalité.")
# Famille.create!(user: user1, name: "Fish", info: "Les fishs ressemblent aux évolutives mais sont beaucoup plus courtes et plus larges. De 1,70 à 1,90 m, très large (52cm ou plus), pas mal de volume, un outline assez rond, c'est l'outil idéal des petites vagues.")

# puts "Finished!"

# Item.destroy_all
# Item.create(name: "Torq", price: "450", famille: Famille.where(name: "LongBord")[0])
# Item.create(name: "FSC", price: "525", famille: Famille.where(name: "Evolutive")[0])
# Item.create(name: "Olaian", price: "250", famille: Famille.where(name: "Fish")[0])
# Item.create(name: "Olaian", price: "354", famille: Famille.where(name: "LongBord")[0])
# Item.create(name: "Roxy", price: "459", famille: Famille.where(name: "LongBord")[0])
# Item.create(name: "Prism", price: "525", famille: Famille.where(name: "Evolutive")[0])

# Litrage.destroy_all
# Litrage.create(kg: "35", confirme: "15", intermediaire: "17", debutant: "26")
# Litrage.create(kg: "40", confirme: "16.5", intermediaire: "19", debutant: "29")
# Litrage.create(kg: "45", confirme: "18", intermediaire: "21", debutant: "32.5")
# Litrage.create(kg: "50", confirme: "19", intermediaire: "22.5", debutant: "35.5")
# Litrage.create(kg: "55", confirme: "20", intermediaire: "23.5", debutant: "38")
# Litrage.create(kg: "60", confirme: "21", intermediaire: "25", debutant: "41")
# Litrage.create(kg: "65", confirme: "22.5", intermediaire: "27.5", debutant: "44")
# Litrage.create(kg: "70", confirme: "24.5", intermediaire: "29.5", debutant: "47.5")
# Litrage.create(kg: "75", confirme: "26", intermediaire: "31.5", debutant: "51")
# Litrage.create(kg: "80", confirme: "28", intermediaire: "33.5", debutant: "54.5")
# Litrage.create(kg: "85", confirme: "30", intermediaire: "35.5", debutant: "58")
# Litrage.create(kg: "90", confirme: "31.5", intermediaire: "38", debutant: "61")
# Litrage.create(kg: "95", confirme: "33", intermediaire: "40", debutant: "64.5")
# Litrage.create(kg: "100", confirme: "35", intermediaire: "42", debutant: "69")
# Litrage.create(kg: "105", confirme: "36.5", intermediaire: "44", debutant: "71.5")
# Litrage.create(kg: "110", confirme: "38.5", intermediaire: "46", debutant: "75")
