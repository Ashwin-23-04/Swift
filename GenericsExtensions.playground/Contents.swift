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

var removeTopElement = stackOfStrings.pop()
print("Removed Element from the stack is \(removeTopElement)")

extension Stack {
    var topItem: Element?{
        return items.isEmpty ? nil : items[items.count - 1]
    }
}


if let topItem = stackOfStrings.topItem{
    print("Now the top item on the stack is \(topItem)")
}
