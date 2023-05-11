class Vehicle{
    var currentSpeed = 0.0
    var description: String{
        return "Travelling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        print("Making noise")
    }
}

let vehicle = Vehicle()
vehicle.description

class Bicycle : Vehicle{
    var hasBasket = false
    override func makeNoise() {
        print("Bicyle is making noise")
    }
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
bicycle.makeNoise()
print(bicycle.description)

class Tandem: Bicycle{
    var currentNoOfPassengers = 0
    override var description: String{
        return "Current number of passenger \(currentNoOfPassengers)"
    }
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNoOfPassengers = 1
print(tandem.description)

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " in gear \(gear)" // here super keyword used to call the vehicle description here
    }
}

let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 10.0) + 1
        }
    }
}

let automaticCar = AutomaticCar()
automaticCar.currentSpeed = 35.0
print("AutomaticCar: \(automaticCar.description)")


