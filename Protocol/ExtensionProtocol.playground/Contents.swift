// Adding Protocol Conformance with an Extension
//  You can extend an existing type to adopt and conform to a new protocol, even if you do not have access to the source code for the existing type. Extensions can add new properties, methods, and subscripts to an existing type, and are therefore able to add any requirements that a protocol may demand


protocol Growable{
    var age: Int? { get }
}

class Human{
    var name: String?
    var weight: Float?
}

extension Human: Growable{
    var age: Int?{
        return 10
    }
}

let humanObj = Human()
humanObj.age

if let a = humanObj.age {
    print("\(a)")
}


//Declaring Protocol Adoption with an Extension
//If a type already conforms to all of the requirements of a protocol, but has not yet stated that it adopts that protocol, you can make it adopt the protocol with an empty extension:

class Animal {
    var age: Int?{
        return 20
    }
}

extension Animal : Growable{}

//Collections of Protocol Types
//Protocols can be used as a type to be stored in collection types like array or dictionary.

let animalObj = Animal()

let growableArray:[Growable] = [humanObj, animalObj]

growableArray.map{ print($0.age) }


// Protocol Extention

protocol Rotating{
    var rotates: Bool {get}
}

extension Rotating{
    var rotates: Bool {
        return true
    }
}

//class Fan: Rotating{}

//Important: If a conforming type provides its own implementation of a required method or property,            that implementation will be used instead of the one provided by the extension.

class Fan: Rotating{
    var rotates: Bool{
        return false
    }
}

let fanObj = Fan()

print(fanObj.rotates)


// Adding Constraints to Protocol Extensions

extension Collection where Element: Equatable{
    func allEqual() -> Bool{
        for element in self {
            if element != self.first{
                return false
            }
        }
        return true
    }
}

let equalNumbers = [100, 100, 100, 100, 100]
let differentNumbers = [100, 100, 200, 100, 200]

print(equalNumbers.allEqual())
print(differentNumbers.allEqual())
