// generic where clause

struct Wrapper<T>{
    let value: T
    
    func base(){
        print(value)
    }
}

Wrapper(value: 5).base()

extension Wrapper{
    func inExtension(){
        print("Extension \(value)")
    }
}

Wrapper(value: "Hello").inExtension()

extension Wrapper where T:Equatable{
    func equatable(other: T){
        print("Equatable: \(value) == \(other) -> \(value == other)")
    }
}

extension Wrapper where T:Comparable{
    func compare(other: T){
        print("Equatable: \(value) < \(other) -> \(value < other)")
    }
}

Wrapper(value: "Bye").equatable(other: "bye bye")
Wrapper(value: 1).compare(other: 2)
