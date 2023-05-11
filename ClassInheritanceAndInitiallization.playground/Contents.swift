class Vehicle{
    var numberOfWheels = 0
    var description : String{
        return "\(numberOfWheels) wheels"
    }
}

let vehicle = Vehicle()
print("Vehicle : \(vehicle.description)")

class Bicycle: Vehicle{
    override init() {
        super.init()
        numberOfWheels = 2
    }
}

let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")

class Car: Vehicle{
    var color : String
    init(color: String){
        self.color = color
    }
    
    override var description: String{
        return "\(super.description) car in a beautiful \(color)"
    }
}

let car = Car(color: "red")
print("Car: \(car.description)")

