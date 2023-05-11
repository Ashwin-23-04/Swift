// Stored property

struct Vehicle{
    var car = "Ferrari"
    let bike = "Hero"
}

let a = Vehicle()
//a.car = "bugati" // error because Struct is value based

class Vehicles{
    var car = "Ferrari"
    let bike = "Hero"
}

let b = Vehicles()
b.car = "Bugati" // we can change variabel name here because class is reference based


// lazy stored property

struct Calculator{
    static func calculate()->Int{
        var game: [Int] = []
        for i in 1...4000{game.append(i)}
        return game.last!
    }
}

struct Player{
    var name:String
    var team:String
    var game = Calculator.calculate()
    lazy var introduction = {
        return "The player \(name) is from team \(team)"
    }()
}


var jordan = Player(name: "Jordan", team: "Bull")
print(jordan.introduction)
