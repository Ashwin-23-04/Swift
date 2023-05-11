//class Person{
//    var residence  :Residence?
//}
//
//class Residence{
//    var numberOfRooms  = 1
//}
//
//let john = Person()
////let roomcount = john.residence!.numberOfRooms // fatal error cuz of nil while unwrapping
//
//if let roomCount = john.residence?.numberOfRooms {
//    print("John's residence has \(roomCount) room(s).")
//} else {
//    print("Unable to retrieve the number of rooms.")
//}
//
//john.residence = Residence()
//if let roomCount = john.residence?.numberOfRooms {
//    print("John's residence has \(roomCount) room(s).")
//} else {
//    print("Unable to retrieve the number of rooms.")
//}


class Person{
    var residence : Residence?
}

class Residence{
    var rooms: [Room] = []
    var numberOfRooms: Int{
        return rooms.count
    }
    subscript(i: Int)-> Room{
        get {
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }
    func printNumberOfRooms() {
        print("The number of rooms is \(numberOfRooms)")
    }
    var address: Address?
}

class Room {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    func buildingIdentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street {
            return "\(buildingNumber) \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}


// Accessing properties through Optional Chaining

let john = Person()
if let roomCount = john.residence?.numberOfRooms {
    print("John's residence has \(roomCount) room(s).")
} else {
    print("Unable to retrieve the number of rooms.")
}



func createAddress() -> Address{
    print("Function is called")
    let address = Address()
    address.buildingNumber = "29"
    address.street = "Sitra"
    return address
}
john.residence?.address = createAddress()

if (john.residence?.address = createAddress()) != nil {
    print("It was possible to set the address.")
} else {
    print("It was not possible to set the address.")
}

//john.residence?[0] = Room(name: "Bathroom") // accessing subscript through optional chaining


let johnsHouse = Residence()
johnsHouse.rooms.append(Room(name: "Living Room"))
johnsHouse.rooms.append(Room(name: "Kitchen"))

john.residence = johnsHouse
if let firstRoomName = john.residence?[0].name {
    print("The first room name is \(firstRoomName).")
} else {
    print("Unable to retrieve the first room name.")
}


var testScores = ["Dave": [86, 82, 84], "Bev": [79, 94, 81]]
testScores["Dave"]?[0] = 91
testScores["Bev"]?[0] += 1
testScores["Brian"]?[0] = 72



john.residence?.address = createAddress()

john.residence?.address?.street

if let buildingIdentifier = john.residence?.address?.buildingIdentifier() {
    print("John's building identifier is \(buildingIdentifier).")
}
