# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Kid.destroy_all()
Chore.destroy_all()

kid1 = Kid.create(name: "Aspen")
kid2 = Kid.create(name: "Darringer")
kid3 = Kid.create(name: "Finnley")

Chore.create(name: "Sweep Deck", kid_id: kid1.id )
Chore.create(name: "Empty Dishwasher", kid_id: kid1.id )
Chore.create(name: "Fold Laundry", kid_id: kid2.id )
Chore.create(name: "Water Flowers", kid_id: kid2.id )
Chore.create(name: "Feed Dog", kid_id: kid3.id)
Chore.create(name: "Wipe Windows", kid_id: kid3.id)