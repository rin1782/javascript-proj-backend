Kid.destroy_all
Chore.destroy_all


finn = Kid.create(name: "Finnley")
nick = Kid.create(name: "Nick")
eli = Kid.create(name: "Eli")


Chore.create([
    {title: "Sweep Deck", kid: finn },
    {title: "Empty Dishwasher", kid: finn },
    {title: "Fold Laundry", kid: nick },
    {title: "Water Flowers", kid: nick },
    {title: "Feed Dog", kid: eli },
    {title: "Wipe Windows", kid: eli }
])