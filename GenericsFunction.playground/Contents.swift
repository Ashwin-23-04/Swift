// Without Generic Function

func swapTwoInts(_ a: inout Int, _ b : inout Int){
    let temporary = a
    a = b
    b = temporary
}

func swapTwoString(_ a: inout String, _ b : inout String){
    let temporary = a
    a = b
    b = temporary
}

func swapTwoDouble(_ a: inout Double, _ b : inout Double){
    let temporary = a
    a = b
    b = temporary
}

print("Without generic function", terminator: "\n\n")

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
print("SomeInt is now \(someInt) and anotherInt is now \(anotherInt)")

var someDouble = 3.1
var anotherDouble = 107.1
swapTwoDouble(&someDouble, &anotherDouble)
print("SomeDouble is now \(someDouble) and anotherDouble is now \(anotherDouble)")

var someString = "Hello"
var anotherString = "world"
swapTwoString(&someString, &anotherString)
print("SomeString is now \(someString) and anotherString is now \(anotherString)", terminator: "\n\n\n")


// With Generic Functions

func swapTwoValues<T> (_ a: inout T, _ b: inout T){
    let temporary = a
    a = b
    b = temporary
}

swapTwoValues(&someInt, &anotherInt)
swapTwoValues(&someDouble, &anotherDouble)
swapTwoValues(&someString, &anotherString)

print("Using generic functions",terminator: "\n\n")
print("SomeInt is now \(someInt) and anotherInt is now \(anotherInt)")
print("SomeDouble is now \(someDouble) and anotherDouble is now \(anotherDouble)")
print("SomeString is now \(someString) and anotherString is now \(anotherString)")
