import Foundation

struct Resolution{
    var width = 0
    var hight = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

//someResolution.width
//someResolution.hight
//someVideoMode.resolution
//someVideoMode.name

let hd = Resolution(width: 1920, hight: 1080)

var cinema = hd
cinema.width = 2048

// Enumeration application
//enum c{
//    case north, east
//    mutating func turnNorth(){
//        self = .north
//    }
//}
//
//var a = c.east
//var b = a
//a.turnNorth()
//
//print(a,b, separator: "\t")


