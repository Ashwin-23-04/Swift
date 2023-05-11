//Protocol Composition
//You can combine multiple protocols into a single requirement with a protocol composition.

protocol Named {
    var name: String { get }
}
protocol Aged {
    var age: Int { get }
}
struct Person: Named, Aged {
    var name: String
    var age: Int
}
func wishHappyBirthday(to celebrator: Named & Aged) {
    print("Happy birthday, \(celebrator.name), you're \(celebrator.age)!")
}
let birthdayPerson = Person(name: "Ashwin", age: 21)
wishHappyBirthday(to: birthdayPerson)
