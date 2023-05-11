let names = ["Ashwin", "Max", "Varun", "Anshil", "Raghav"]

let reversedNames = names.sorted(by: {(s1: String, s2: String)-> Bool in return s1<s2})
let reversedNames2 = names.sorted(by: {s1, s2 in  s1>s2})
let reversedNames3 = names.sorted(by: {$0 < $1})

print(reversedNames)
print(reversedNames2)
print(reversedNames3)


func greaterThanFive (number: Int) -> Bool{
    if number > 5{
        return true
    }
    return false
}

greaterThanFive(number: 6)

func greet(){
    print("hello")
}

greet()

var greetings = { (name: String) -> String in "Hello, \(name)" }

print(greetings("Ashwin"))


let namearr = names.sorted { if $0 == "Varun"{return true}else if $1 == "Varun"{ return false};return $0 < $1}

print(namearr)
