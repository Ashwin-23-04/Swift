// Non - Generic Version of Stack

struct IntStack {
    var items: [Int] = []
    mutating func push(_ item: Int){
        items.append(item)
    }
    mutating func pop() -> Int{
        return items.removeLast()
    }
}

// Generic Version of Stack

struct Stack<Element>{
    var items: [Element] = []
    mutating func push(_ item: Element){
        items.append(item)
    }
    mutating func pop () -> Element{
        return items.removeLast()
    }
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("animals")
stackOfStrings.push("trees")
stackOfStrings.push("birds")
stackOfStrings.push("insects")

var topElementInStack = stackOfStrings.pop()
print("Last Element in the Stack \(topElementInStack)")
