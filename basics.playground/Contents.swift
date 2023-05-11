let maximumNumberofLoginAttempts = 10;
var numberOfCurrentAttempts = 0;

var WelcomeMessage : String
var a,b,c : Double

WelcomeMessage = "Hello"
a = 4.9999

//maximumNumberofLoginAttempts = 9 // error because this is constant
print("hello", "world", separator: " ")
print(WelcomeMessage, terminator: " world\n\n")

let myName = "Ashwin"

print("My name is \(myName)")

let pi = 3.14 ; print(pi)

// Integer bounds

let signedIntMin = Int32.min ; print("signedIntMin \(signedIntMin)")
let signedIntMax = Int32.max ; print("signed int max \(signedIntMax)")
let unsignedIntMin = UInt32.min ; print("signedIntMin \(unsignedIntMin)")
let unsignedIntMax = UInt32.max ; print("signedIntMax \(unsignedIntMax)")


var x : UInt
x = 5
print(5)

let PI = 3 + 0.14 // type inference [Prefer Double than Float]
print(type(of: PI))

// Numeric Literals

//Interger LIterals
let DecimalInteger = 17
let BinaryInteger = 0b10001
let OctalInteger = 0o21
let HexadecimalInteger = 0x11

// float literals

let DecimalFloat = 1.25e2
let HexadecimalFloat = 0xFp2


let OneMillion = 1_000_000 // Readability

//Numeric Type Conversion
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

// type aliases

typealias constant = Int64
var z : constant
z = 4


// Tuples
let http404Error = (404, "Not Found")

let (statusCode, statusMsg) = http404Error

print(statusCode,statusMsg,separator: " : ")
print("Status code is \(http404Error.0)")

//Optionals

//let n = "hello" // string
let n = "123" // string
let convertedNumber = Int(n)

//print(convertedNumber!)// force unwrap
print(type(of: convertedNumber)) // optional Int because what if the string contains "Hello world" instead of "123"

//Nil

//var i :Int? // default value is nil
var i :Int? = 404
i = nil

if (convertedNumber != nil){
    print("Converted Number contains Integer values \(convertedNumber!)") // here exclamation point will force unwraping
}

// optional binding

if let actualNumber = Int(n){
    print("The string \(n) has an Integer value of \(actualNumber)")
}else{
    print("The string \(n) has no Integer value")
}

if let convertedNumber{
    print("\(convertedNumber)")
}

//Implicitly unwrapped Optional

let e : String! = "1234"
let f :String = e

print(f)

// Error Handling

func tothrowError() throws {
    
}

do{
    try tothrowError()
}catch{
    
}


//Assertion

let age = 3
//let age = -3
//assert(age>=0, "The person age can't be less than zero")

if age>10{
    print("Age is greater than Ten")
}else if age>=0{
    print("Age is greater than or equal to Zero")
}else{
    assertionFailure("The person age can't be less than Zero")
}

// Nil-Coalescing operator

let defaultValue = "green"
var VAlue :String?
//VAlue = "red"
var colorName = VAlue ?? defaultValue



// Range operator

//closed range operator
for index in 1...4{
    print(index, terminator: " ")
}

// Half open range operator
for index in 1..<4{
    print("\n",index,terminator: " ")
}

// one sided range operator
// used both closed and half open range in array to iterate

// You can also check whether a one-sided range contains a particular value

let range = 0...5
range.contains(5)
range.contains(6)
range.contains(0)
range.contains(-1)


// String Literals

let multiLineStringLiterals = """
 
 This
 is
 a
 Multi            line\
 
 String
 
 
 Literal

 """

print(multiLineStringLiterals)

// special character carriage return
print("Hello world")
print("Hello \rworld")

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"

let dollor = "\u{24}"
let sparklingHeart = "\u{1F496}"
let blackHeart = "\u{2665}"

print(dollor, sparklingHeart, blackHeart , separator: "\t")
print("\u{1F498}")

for character in "This is a dog\u{1F436}" {
    print(character)
}

let exclamationMark: Character = "!"
let string1 = "hello"
let string2 = "world"
var welcome = string1 + string2
print(welcome)
welcome.append(exclamationMark)
print(welcome)
print(#"Write an interpolated string in Swift using \#(welcome)."#)

//print("\u{65}", "\u{301}")
