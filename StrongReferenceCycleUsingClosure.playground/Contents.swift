class HTMLElement{
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = {
        if let text = self.text {
            return "<\(self.name)> \(text) <\(self.name)>"
        }else{
            return "<\(self.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
        print("\(name) is being initialized")
    }
    deinit{
        print("\(name) is being deinitialized")
    }
}


let heading = HTMLElement(name: "h1")
let defaultText = "Some default text..."

heading.asHTML = {
    return "<\(heading.name)> \(heading.text ?? defaultText)</\(heading.name)>"
}

print(heading.asHTML())


var paragraph: HTMLElement? = HTMLElement(name: "p", text: "Hello This is a paragraph")
print(paragraph!.asHTML())

//paragraph = nil
