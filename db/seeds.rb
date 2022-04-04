# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Famille.destroy_all
Famille.create(name: "LongBord", info: "Le longboard est un type de planche de surf bien particulier, qui permet une pratique différente de celle des plus petites planches. Les planches de longboard sont des planches plus longues que la moyenne.")
Famille.create(name: "Evolutive", info: "Ce sont des planches de 1,90 à 2,20 m pour une largeur comprise entre 49 et 52 cm. Large, épaisse, ce style de planche est tolérant tout en offrant des possibiltés de manoeuvres étendues. Beaucoup de surfers moyens adoptent une évolutive comme petite planche même si cela manque un peu de radicalité.")
Famille.create(name: "Fish", info: "Les fishs ressemblent aux évolutives mais sont beaucoup plus courtes et plus larges. De 1,70 à 1,90 m, très large (52cm ou plus), pas mal de volume, un outline assez rond, c'est l'outil idéal des petites vagues.")

Item.destroy_all
Item.create(name: "Torq", price: "450", famille: Famille.where( name: "LongBord")[0])
Item.create(name: "FSC", price: "525", famille: Famille.where( name: "Evolutive")[0])
Item.create(name: "Olaian", price: "250", famille: Famille.where( name: "Fish")[0])
Item.create(name: "Olaian", price: "354", famille: Famille.where( name: "LongBord")[0])
Item.create(name: "Roxy", price: "459", famille: Famille.where( name: "LongBord")[0])
Item.create(name: "Prism", price: "525", famille: Famille.where( name: "Evolutive")[0])

Litrage.destroy_all
Famille.create(kg: "35", debutant: "26", intermediaire: "17", confirme: "15")
