@propertyWrapper
struct twelveorlessthan{
    private var number = 0
    var wrappedValue : Int{
        get{ return number}
        set{
            number = min(newValue, 12)
        }
    }
}

struct square{
    @twelveorlessthan var length: Int
    @twelveorlessthan var breath: Int
}

var sq1 = square()
sq1.length = 50
print(sq1.length)
sq1.breath = 3
print(sq1.breath)

// property wrapper using initializer

@propertyWrapper
struct TenOrLess{
    var maximum : Int
    var number : Int
    var wrappedValue:Int{
        get{return number}
        set{number = min(newValue, maximum)}
    }
    init(){
        maximum = 10
        number = 0
    }
    init(wrappedValue:Int){
        maximum = 10
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue:Int, max:Int){
        maximum = max
        number = min(wrappedValue, max)
        
    }
}


struct rectangel{
    @TenOrLess(wrappedValue: 2, max: 5) var length:Int
}

var a = rectangel()
a.length = 11
print(a.length)


// projecting a value from property wrapper

@propertyWrapper
struct SmallNumber {
    private var number: Int
    private(set) var projectedValue: Bool

    var wrappedValue: Int {
        get { return number }
        set {
            if newValue > 12 {
                number = 12
                projectedValue = true
            } else {
                number = newValue
                projectedValue = false
            }
        }
    }

    init() {
        self.number = 0
        self.projectedValue = false
    }
}
struct SomeStructure {
    @SmallNumber var someNumber: Int
}
var someStructure = SomeStructure()

someStructure.someNumber = 11
print(someStructure.$someNumber)

someStructure.someNumber = 25
print(someStructure.$someNumber)
