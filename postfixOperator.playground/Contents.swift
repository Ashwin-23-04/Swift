import UIKit
// postfix

let value: Double = 30

let squareRootNormalMethod = sqrt(value)
print(squareRootNormalMethod)

postfix operator ****
postfix func ****(lhs :Double) -> Double{
    return sqrt(lhs)
}


let squareRootCustomOperator = value****
print(squareRootCustomOperator)
