finn = Kid.create(name: "Finnley")
nick = Kid.create(name: "Nick")
eli = Kid.create(name: "Eli")


Chore.create([
    {name: "Sweep Deck", kid: finn },
    {name: "Empty Dishwasher", kid: finn },
    {name: "Fold Laundry", kid: nick },
    {name: "Water Flowers", kid: nick },
    {name: "Feed Dog", kid: eli },
    {name: "Wipe Windows", kid: eli }
])