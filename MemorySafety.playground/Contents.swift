var one = 1

print("We're number \(one)")

func oneMore(than number: Int) -> Int{
    return number + 1
}

var myNumber = oneMore(than: one)
print(myNumber)

// conflicting Access to In-Out Parameter

func increment(_ number: inout Int){
    number += one
}

//increment(&one) // Error: Conflicting accesses to one

// solution

var copyOne = one

increment(&copyOne)
one = copyOne


func balance(_ x: inout Int, _ y: inout Int){
    let sum = x + y
    x = sum / 2
    y = sum - x
}

var playerOneScore = 42
var playerTwoScore = 30

balance(&playerOneScore, &playerTwoScore)
//balance(&playerOneScore, &playerOneScore) // Error: conflicting accesses to playerOneScore

// conflicting Access to self in Methods

struct Player{
    var name: String
    var health: Int
    var energy: Int
    
    static let maxHealth = 10
    mutating func restoreHealth(){
        health = Player.maxHealth
    }
}


extension Player {
    mutating func shareHealth(with teammate: inout Player){
        balance(&teammate.health, &health)
    }
}

var player1 = Player(name: "Ashwin", health: 10, energy: 10)
var player2 = Player(name: "Max", health: 5, energy: 10)

player1.shareHealth(with: &player2)
//oscar.shareHealth(with: &oscar)// Error: conflicting accesses to oscar

player2

// Conflicting Access to Properties

var playerInformation  = (health : 10, energy: 20)
//balance(&playerInformation.health, &playerInformation.energy) // Error: conflicting access to properties of playerInformation


func someFunction () {
    var oscar = Player(name: "Oscar", health: 10, energy: 10)
    balance(&oscar.health, &oscar.energy)
}
