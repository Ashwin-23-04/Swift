struct Fahrenheit{
    var temperature: Double
    init(){
        temperature = 32.0
    }
}

var fahrenheit = Fahrenheit()
print("Temperature is \(fahrenheit.temperature)")


struct Celsius{
    var temperatureInCelsius : Double
    init(fromFahrenheit fahrenheit: Double){
        temperatureInCelsius = (fahrenheit-32.0) / 1.8
    }
    init(fromKelvin kelvin: Double){
        temperatureInCelsius = kelvin - 273.15
    }
    init(_ celsius:Double){                 // without Argument Label
        temperatureInCelsius = celsius
    }
}

let boilingPointOfWater = Celsius(fromFahrenheit: 212.0)
let freezingPointOfWater = Celsius(fromKelvin: 273.15)
print("Boiling Point of Water is \(boilingPointOfWater.temperatureInCelsius)\nFreezing point of Water is \(freezingPointOfWater.temperatureInCelsius)")


struct Color{
    let red, green, blue : Double
    init(red: Double, green: Double, blue: Double){
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double){
        red = white
        green = white
        blue = white
    }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

let bodyTemperature = Celsius(37.0) // without an argument label


// Optional Property types

class SurveyQuestion{
    let text: String
    var response: String?
    init(text: String){
        self.text = text
    }
    func ask(){
        print(text)
    }
}

let cheeseQuestion = SurveyQuestion(text: "Do you like Cheese?")
cheeseQuestion.ask()
cheeseQuestion.response = "Yes I do like Cheese"

// Memberwise Initiallizer for Struct

struct Size{
    var width = 0.0, height = 0.0
}
let s1 = Size(width: 1.1, height: 1.5)
let s2 = Size(width: 1.2)
let s3 = Size(height: 1.6)
let s4 = Size()

struct Point {
    var x = 0.0, y = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    init(){}
    init(origin: Point, size: Size){
        self.origin = origin
        self.size = size
    }
    init(center : Point, size: Size){
        let OriginX = center.x - (size.width / 2)
        let OriginY = center.y - (size.height / 2)
        self.init(origin: Point(x: OriginX, y: OriginY), size: Size())
    }
}

let basicRect = Rect()
let originRect = Rect(origin: Point(x: 2.0, y: 2.0),size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4.0, y: 4.0),size: Size(width: 3.0, height: 3.0))
