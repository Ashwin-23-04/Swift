class Person {
    let name: String
    init(name:String){
        self.name = name
        print("\(name) is being initialized")
    }
    var apartment: Apartment?
    deinit{print("\(name) is being deinitialized")}
}

class Apartment{
    let unit:String
    init(unit: String){
        self.unit = unit
        print("Appartment \(unit) is being initialized")
    }
    weak var tenant: Person?
    deinit{print("Appartment \(unit) is being deinitialized")}
}

var ashwin: Person?
var unit4A: Apartment?

ashwin = Person(name: "Ashwin")
unit4A = Apartment(unit: "4A")

ashwin!.apartment = unit4A
unit4A!.tenant = ashwin

ashwin = nil
unit4A = nil
