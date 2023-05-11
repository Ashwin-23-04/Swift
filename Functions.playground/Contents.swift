func greet(person: String) -> String{
    let greeting = "Hello " + person
    return greeting
}

greet(person: "Ashwin")
//
//func greet(person: String, alreadyGreeted: Bool) -> String {
//    if alreadyGreeted {
//        return greetAgain(person: person)
//    } else {
//        return "Helo"
//    }
//}
//print(greet(person: "Tim", alreadyGreeted: false))

func add(a: Int, b : Int){
    print(a+b)
}
add(a: 2, b: 5)

//returning multiple values
func minMax(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
print("min is \(bounds.min) and max is \(bounds.max)")
