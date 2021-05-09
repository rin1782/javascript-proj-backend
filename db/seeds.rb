finn = Kid.create(name: "Finnley")
nick = Kid.create(name: "Nick")
eli = Kid.create(name: "Eli")



Chore.create(name: "Sweep Deck", kid_id: finn.id )
Chore.create(name: "Empty Dishwasher", kid_id: finn.id )
Chore.create(name: "Fold Laundry", kid_id: nick.id )
Chore.create(name: "Water Flowers", kid_id: nick.id )
Chore.create(name: "Feed Dog", kid_id: eli.id)
Chore.create(name: "Wipe Windows", kid_id: eli.id)