@resultBuilder
struct StringAddBuilder{
    static func buildBlock(_ components: String...) -> Int {
        let numbers = components.compactMap({ Int($0)})
        
        var sum = 0
        numbers.forEach({
            sum += $0
        })
        return sum
    }
}

func build(@StringAddBuilder _ content: ()-> Int) -> Int{
    content()
}


let sum = build {
    "12"
    "21"
    "34"
    "42"
}

print(sum)
