# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Kid.create(name: "Aspen")
Kid.create(name: "Darringer")
Kid.create(name: "Finnley")

Chore.create(name: "Sweep Deck", kid_id: 1)
Chore.create(name: "Empty Dishwasher", kid_id: 1)
Chore.create(name: "Fold Laundry", kid_id: 2)
Chore.create(name: "Water Flowers", kid_id: 2)
Chore.create(name: "Feed Dog", kid_id: 3)
Chore.create(name: "Wipe Windows", kid_id: 3)