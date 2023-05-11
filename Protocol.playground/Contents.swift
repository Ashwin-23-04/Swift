protocol FullyNamed {
    var fullName: String { get }
}

struct Person: FullyNamed {
    var fullName: String
}

let person1 = Person(fullName: "Ashwin A")


class StarShip: FullyNamed{
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil){
        self.name = name
        self.prefix = prefix
    }
    var fullName: String{
        return (prefix != nil ? prefix! + " " : "") + name
    }
}

var ncc1701 = StarShip(name: "Enterprise", prefix: "USS")
//var ncc1701 = StarShip(name: "Enterprise")

ncc1701.fullName

//protocol someProtocol{
//    static func someTypeMethod(name: String = "Ashwin")// Default argument in protocol throw error
//}

protocol RandomNumberGenerator{
    func random() -> Double
}

class LinearCongruentialGenerator: RandomNumberGenerator{
    var lastRandom = 42.0
    let m = 129968.0
    let a = 3877.0
    let c = 29573.0
    func random() -> Double {
        lastRandom = ((lastRandom * a + c).truncatingRemainder(dividingBy: m))
        return lastRandom/m
    }
}

let generator = LinearCongruentialGenerator()
print(generator.random())
print(generator.random())


protocol Togglable{
    mutating func toggle()
}

enum OnOffSwitch: Togglable{
    case off, on
    mutating func toggle() {
        switch self{
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()


//protocol someProtocol{
//    init()
//}
//
//class superClass{
//    init(){
//
//    }
//}
//
//class SomeSubClass: superClass, someProtocol{
//    required override init() {
//
//    }
//}

class Dice{
    let sides: Int
    let generator: RandomNumberGenerator
    init(sides: Int, generator: RandomNumberGenerator){
        self.sides = sides
        self.generator = generator
    }
    func roll() -> Int{
        return Int(generator.random())
    }
}

var d6 = Dice(sides: 6, generator: LinearCongruentialGenerator())
for _ in 1...5{
    print("Random dice roll is \(d6.roll())")
}
