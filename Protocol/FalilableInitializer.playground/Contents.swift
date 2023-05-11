struct Animal {
    let species: String
    init?(species: String) {
        if species.isEmpty { return nil }
        self.species = species
    }
}

let someCreature = Animal(species: "Lion")
let Anonymous = Animal(species: "")

if let Anonymous = Anonymous{
    print("\(Anonymous.species)")
}

if Anonymous == nil{
    print("The anonymous creature couldn't be initialized")
}
