//protocol FullyNamed{
//    var fullName: String {get set}
//}
//
//struct Person{
//    var age: Int = 20
//}
//
//extension Person : FullyNamed{
//    var fullName: String{
//        get{
//            return self.fullName
//        }
//        set{
//            self.fullName = newValue
//        }
//    }
//}
//
//var person1 = Person()
//person1.fullName = "Ashwin A"
//print(person1.fullName)


protocol MethodRequirements {
    func someMethod()
    func someMethodWithReturnType() -> String
    static func someInstanceMethodWithParameter(variadicParameter: String...)
}

//struct SomeStruct: MethodRequirements{
//    func someMethod() {
//        print("Some method is called")
//    }
//    func someMethodWithReturnType() -> String {
//        return "RETURNING SOMETHING"
//    }
//    static func someInstanceMethodWithParameter(variadicParameter: String...) {
//        for i in variadicParameter{
//            print(i)
//        }
//    }
//}

class SomeStruct: MethodRequirements{
    func someMethod() {
        print("Some method is called")
    }
    func someMethodWithReturnType() -> String {
        return "RETURNING SOMETHING"
    }
    class func someInstanceMethodWithParameter(variadicParameter: String...) {
        for i in variadicParameter{
            print(i)
        }
    }
}

let structObj = SomeStruct()
structObj.someMethod()
let a = structObj.someMethodWithReturnType()
print(a)
SomeStruct.someInstanceMethodWithParameter(variadicParameter: "1", "2", "3")
