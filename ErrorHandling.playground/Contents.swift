enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}

//throw VendingMachineError.insufficientFunds(coinsNeeded: 500)

// Propagating Errors Using Throwing Function

struct Item{
    var price: Int
    var count: Int
}

class VendingMachine{
    var inventory=["Candy Bar" : Item(price: 12, count: 7),
                   "Chips" : Item(price: 10, count: 1),
                   "Pretzels": Item(price: 7, count: 11)
    ]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else{
            throw VendingMachineError.invalidSelection
        }
        guard item.count > 0 else{
            throw VendingMachineError.outOfStock
        }
        guard item.price <= coinsDeposited else{
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price-coinsDeposited)
        }
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        print("Dispensing \(name)")
    }
}

let favSnacks = [
    "Alice" : "Chips",
    "Bob" : "Licorice",
    "Eve" : "Pretzels"
]

func buyFavSnack(person: String, vendingMachine: VendingMachine)
throws{
    let snackName = favSnacks[person] ?? "Candy Bar"
//    let a = [1,2,3]
//    let b = a[4]
    try vendingMachine.vend(itemNamed: snackName)
}

//var v = VendingMachine()
//v.coinsDeposited = 100
//v.vend(itemNamed: "Candy Bar")
//v.coinsDeposited

struct PurchasedSnack {
    let name :String
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}

// Catching errors using do try catch

var vendingMachine = VendingMachine()
vendingMachine.coinsDeposited = 10
do{
    try buyFavSnack(person: "Alice", vendingMachine: vendingMachine)
    print("Success! ")
}catch VendingMachineError.invalidSelection{
    print("Invalid Selection")
}catch VendingMachineError.outOfStock{
    print("Out of stock")
}catch VendingMachineError.insufficientFunds(let coinsNeeded){
    print("Insufficient funds. Please insert an additional \(coinsNeeded) coins.")
}catch{
    print("Unexpected error: \(error)")
}


func nourish(with item:String) throws {
    do{
        try vendingMachine.vend(itemNamed: item)
    }catch is VendingMachineError{
        print("Couldn't buy that from the vending machine")
    }
}

do{
    try nourish(with: "Beet-Flavoured chips")
}catch{
    print("Unexpected non-vending machine : \(error)")
}
