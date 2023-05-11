class counter{
    var count : UInt = 0
    func increment(){
        count += 1
    }
    func increment(by amount : UInt){
        count += amount
    }
    func reset(){
        count = 0
    }
}


let c1 = counter()

c1.increment()
c1.increment()
c1.increment()
c1.increment()

c1.increment(by: 5)
c1.reset()


// self

struct Point{
    var x = 0.0, y = 0.0
    func isToRight(x: Double)-> Bool{
        self.x > x
    }
}

var somePoint = Point(x: 4.0, y: 5.0)

print(somePoint.isToRight(x: 1.0))


enum TriStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
    }
}
var ovenLight = TriStateSwitch.low
ovenLight.next()
ovenLight.next()


