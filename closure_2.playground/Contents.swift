import Foundation
// Declaring closures inside a function

func details(fullName: String, age: Int, firstName: (String)->(String)){
    print(firstName(fullName),age, separator: "\t")
}

details(fullName: "Ashwin A", age: 20, firstName: {(name: String)->(String) in name.components(separatedBy: " ")[0]} )


// Infering type from context
details(fullName: "Max A", age: 20, firstName: {name ->(String) in name.components(separatedBy: " ")[0]} )

// Shorthand Argument Names
details(fullName: "Jacky A", age: 20, firstName: {$0.components(separatedBy: " ")[0]} )


//Trailing Closure
details(fullName: "Ashwin A", age: 20){(name: String)->(String) in name.components(separatedBy: " ")[0]}

// Auto closure --> No need for brackets [Brackets will add automatically]

//func display(greet: () -> ()) {
//    greet()
//}
//
//display(greet:{print("Hello World!")})

func display(greet: @autoclosure () -> ()) {
    greet()
}

display(greet:print("Hello World!"))


// escaping

var arrayOfClosures : [()->Void] = []
func someFunctionWithEscapingClosure (handler : @escaping()->Void){
    arrayOfClosures.append(handler)
}

someFunctionWithEscapingClosure(handler: {details(fullName: "slkjf", age: 8, firstName: {(name: String)->(String) in name.components(separatedBy: " ")[0]})})

arrayOfClosures[0]()
