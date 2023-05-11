import Foundation

class Animal{
    public var legcount: Int = 0 // public - accessible from everywhere
    public func display(){
        print("Animal leg count \(legcount)")
    }
}

var animalObj = Animal()

animalObj.legcount = 4
animalObj.display()


class Student{
    fileprivate var name = "Ashwin" // fileprivate give access to anywhere from the source file
    private func display(){         // private only give access inside the class or struct
        print("My name is \(name)")
    }
}

var studentObj = Student()

print(studentObj.name)
//studentObj.display()


// A module is a collection of types (classes, protocols, etc) and resources (data). They are built to work together and form a logical unit of functionality.

// Internal - accessed only within the same module

