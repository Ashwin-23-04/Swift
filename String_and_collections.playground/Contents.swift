// String Indices
var greetings = "Hello , Welcome to Zoho"

for index in greetings.indices{
    print("\(greetings[index])", terminator: " ")
}

// Inserting and removing character

greetings.insert(contentsOf: "!", at: greetings.endIndex)
print("\n" ,greetings, separator: "")
greetings.insert(contentsOf: " Corporation", at: greetings.index(before: greetings.endIndex))
print(greetings)

greetings.remove(at: greetings.index(before: greetings.endIndex))
let range = greetings.index(greetings.endIndex, offsetBy: -12)..<greetings.endIndex
print(greetings)
print(range)
greetings.removeSubrange(range)
print(greetings)

let index = greetings.firstIndex(of: ",") ?? greetings.endIndex
let begining = greetings[..<index] // Sub String
let newString = String(begining) // convertion of sub string into string for long-term storage

/**
        Collections
 **/

// Array
var arr : [Int] = [0]
arr.append(3)
arr.append(2)
arr.append(1)
arr.append(3)

print(arr)
for index in 0..<arr.count{
    print(arr[index], terminator: " ")
}
print()
for item in arr{
    print(item)
}
for (index,value) in arr.enumerated(){
    print("Index : \(index)\tValue : \(value)")
}

//Set

var letters = Set<Character>()
letters.insert("a")
print(letters)

var names:Set<String> = ["Joe", "Pio","Arun"]
names.sorted()

let houseAnimals: Set = ["dog", "cat"]
let farmAnimals: Set = ["cow", "hen", "goat", "dog", "cat"]
let cityAnimals: Set = ["pigeon", "mouse"]
houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
farmAnimals.isDisjoint(with: cityAnimals)

// Dictionaries
var dic1: [Int : String] = [:] // Empty dictionary
dic1[1] = "Lazzy"
dic1[2] = "Lazzy"
print(dic1)

var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
airports.count
airports["LHR"] = "London"
airports["LHR"] = "London Heathrow"
airports["APL"] = "Apple International"
airports["APL"] = nil //APL has now been removed from the dictionary

print(airports)
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
        print("The old value is \(oldValue)")
}


// iteration
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}
