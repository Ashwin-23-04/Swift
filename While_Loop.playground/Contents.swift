//Snakes and Ladders game

// Initializing board and total square in a board
let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)

// Defining ladders
board[03] = +8
board[06] = +11
board[09] = +09
board[10] = +02

// Defining Snakes
board[14] = -10
board[19] = -11
board[22] = -02
board[24] = -08

//dice Rolling
var square = 0
var diceRoll = 0

while square < finalSquare{
    diceRoll = Int.random(in: 1...6)
    print("Dice Rolled : \(diceRoll)")
    square += diceRoll
    print("Current Square : \(square)")
    if square < board.count{
        square += board[square]
    }
    print("Current Square : \(square)", terminator: "\n\n")
}

print("Game Over!!")
