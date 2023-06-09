class Customer {
    let name: String
    var card: CreditCard?
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    deinit { print("\(name) is being deinitialized") }
}

class CreditCard {
    let number: UInt64
    unowned let customer: Customer
    init(number: UInt64, customer: Customer) {
        self.number = number
        self.customer = customer
        print("Card #\(number) is being initialized")
    }
    deinit { print("Card #\(number) is being deinitialized") }
}

var person: Customer?

person = Customer(name: "Ashwin")
person!.card = CreditCard(number: 1234_5678_9012_3456, customer: person!)

person = nil

