//For-In Loop
let names = ["Anshil", "Raghav", "Ashwin", "Max"] // arrays

for name in names.sorted(){
    print("Hello \(name)")
}

let numberOfLegs = ["Spider" : 8, "cat":4,"dog":2] // dictionaries

for (animalName, legs) in numberOfLegs{
    print("\(animalName)s have \(legs) legs")
}

for index in 1...5{ // works in ranges
    print("\(index) times 10 is \(index * 10)")
}

var a = 3
var b = 10

for _ in 1...b {
    a += b
}
print(a)

for i in stride(from: 0, to: 10, by: 2){
    print(i)
}
print()
for i in stride(from: 0, through: 10, by: 2){
    print(i)
}
