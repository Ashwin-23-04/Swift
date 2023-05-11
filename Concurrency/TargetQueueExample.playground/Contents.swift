import Foundation


let a = DispatchQueue(label: "A")
//let b = DispatchQueue(label: "B", attributes: .concurrent, target: a) // it becomes serial execution because target queue inherite from queue a

let b = DispatchQueue(label: "B", attributes: [.concurrent, .initiallyInactive])
b.setTarget(queue: a)
b.activate()

a.async {
    for i in 0...5{
        print(i)
    }
}

a.async {
    for i in 6...10{
        print(i)
    }
}

b.async {
    for i in 11...15{
        print(i)
    }
}

b.async {
    for i in 16...20{
        print(i)
    }
}
