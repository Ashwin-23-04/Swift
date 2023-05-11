struct Square{
    var length : Int
    var breath : Int
    var area: Int{
        get{
            return length * breath
        }
        set{
            length = newValue
        }
    }
}

var sq1: Square = Square(length: 10, breath: 10)

print(sq1.area)
sq1.area=20
print(sq1.area)

//
struct Point{
    var x = 0.0, y = 0.0
}
struct Size{
    var width = 0.0, height = 0.0
}

struct Rect{
    var origin = Point()
    var size = Size()
    var center : Point{
        get{
            let centerX = origin.x + (size.width/2)
            let centerY = origin.y + (size.height/2)
            return Point(x:centerX,y:centerY)
        }
        set{
            origin.x = newValue.x - (size.width / 2)
            origin.y = newValue.y - (size.height / 2)
        }
    }
}

var square = Rect(size: Size(width: 10.0, height: 10.0))
square.center
square.center = Point(x: 15.0, y: 15.0)
square.center
