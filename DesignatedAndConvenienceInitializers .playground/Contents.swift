class Food{
    var name:String
    init(name: String){
        self.name = name
    }
    convenience init(){
        self.init(name: "[Unnamed]")
    }
}

let namedMeat = Food(name: "Bacon")
let unNamedMeat = Food()

class RecipeIngredient: Food{
    var quantity: Int
    init(name: String, quantity: Int){
        self.quantity = quantity
        super.init(name: name)
    }
    override convenience init(name: String) {
        self.init(name: name, quantity: 1)
    }
}

let oneMysteryItem = RecipeIngredient()
let oneBacon = RecipeIngredient(name: "Bacon")
let sixEggs = RecipeIngredient(name: "Eggs", quantity: 6)

class ShoppingListItem: RecipeIngredient {
    var purchased = false
    var description:String{
        var output = "\(quantity) x \(name) "
        output += purchased ? "Purchased" : "Not Purchased"
        return output
    }
}

var breakfastList = [
    ShoppingListItem(),
    ShoppingListItem(name: "Bacon"),
    ShoppingListItem(name: "Eggs", quantity: 6),
]

breakfastList[0].name = "Orange Juice"
breakfastList[0].purchased = true
breakfastList[1].purchased = true

for item in breakfastList {
    print(item.description)
}



// failable initializer for struct


struct Animal{
    let species:String
    init?(species:String){
        if species.isEmpty{
            return nil
        }
        self.species = species
    }
}

let someCreature = Animal(species: "Giraffe")

if let giraffe = someCreature {
    print("An animal was initialized with a species of \(giraffe.species)")
}

let anonymous = Animal(species: "")
if anonymous == nil{
    print("The anonymous creature couldn't be initialized")
}


// failable initializer for enumeration


enum Temperature{
    case kelvin, fahrenheit, celsius
    init?(symbol: Character){
        switch symbol{
        case "K":
            self = .kelvin
        case "C":
            self = .celsius
        case "F":
            self = .fahrenheit
        default:
            return nil
        }
    }
}

let temp = Temperature(symbol: "F")

if temp != nil{
    print("Temperature is measured as \(temp.unsafelyUnwrapped)")
}


// Propagation of initialization failure

class Product{
    let name:String
    init?(name:String){
        if name.isEmpty {return nil}
        self.name = name
    }
}

class CartItem: Product{
    let quantity: Int
    init?(name: String, quantity: Int){
        if quantity<1{return nil}
        self.quantity = quantity
        super.init(name: name)
    }
}

if let twosock = CartItem(name: "Sock", quantity: 2){
    print("Item : \(twosock.name) Quantity : \(twosock.quantity)")
}else{
    print("Unable to initialize")
}
