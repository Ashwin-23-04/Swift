protocol Container {
    associatedtype Item
    mutating func append(_ item: Item)
    var count : Int { get }
    subscript(i: Int) -> Item { get }
}


// non-generic
//
//struct IntStack: Container{
//    var items: [Int] = []
//    mutating func push(_ item: Int){
//        items.append(item)
//    }
//    mutating func pop() -> Int {
//        return items.removeLast()
//    }
//
//    typealias Item = Int
//    mutating func append(_ item: Int) {
//        self.push(item)
//    }
//    var count: Int{
//        return items.count
//    }
//    subscript(i: Int) -> Int {
//        return items[i]
//    }
//}

// Generic

struct Stack<Element>: Container {
    var items: [Element] = []
    mutating func push(_ item: Element) {
        items.append(item)
    }
    mutating func pop() -> Element {
        return items.removeLast()
    }
    
    // conformance to the Container protocol
    mutating func append(_ item: Element) {
        self.push(item)
    }
    var count: Int {
        return items.count
    }
    subscript(i: Int) -> Element {
        return items[i]
    }
}
