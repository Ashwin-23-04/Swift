import Foundation

enum CompassPoint{
    case North, South, East, West
}

var directionIWantToGo = CompassPoint.East
directionIWantToGo = .South

switch directionIWantToGo {
case .North:
    print("North")
case .South:
    print("South")
case .East:
    print("East")
case .West:
    print("West")
}

//Iteration over Enumeration

enum Planet: CaseIterable {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let numberOfPlanets = Planet.allCases.count

for planet in Planet.allCases{
    print("\(planet)", terminator: "\n\n")
}

//Associated values

enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productcode = Barcode.upc(1, 385, 389, 1)
//productcode = .qrCode("https://www.google.com")

switch productcode {
case .upc(let numberSystem, let manufacturer, let product, let check):
    print("UPC: \(numberSystem), \(manufacturer), \(product), \(check).")
case .qrCode(let productCode):
    print("QR code: \(productCode).")
}


// Raw values

enum Planet1: Int {
    case mercury=1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

Planet1.mars.rawValue

let uranus = Planet1(rawValue: 7) // Initializing from a Raw Value

//Recursive Enumeration --> enumeration inside enumeration

indirect enum ArithmeticExpression {
    case number(Int)
    case addition(ArithmeticExpression, ArithmeticExpression)
    case multiplication(ArithmeticExpression, ArithmeticExpression)
}

let five = ArithmeticExpression.number(5)
let four = ArithmeticExpression.number(4)

let sum = ArithmeticExpression.addition(five, four)
let product = ArithmeticExpression.multiplication(sum,ArithmeticExpression.number(2))

func evalution(_ expression: ArithmeticExpression) -> Int{
    switch expression{
    case let .number(value):
        return value
    case let .addition(a, b):
        return evalution(a) + evalution(b)
    case let .multiplication(a, b):
        return evalution(a) * evalution(b)
    }
}


print(evalution(product))
