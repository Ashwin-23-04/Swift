class Document{
    var name:String
    init(){}
    init?(name:String){
        if name.isEmpty{
            return nil
        }
        self.name = name
        
    }
}

class automaticNameDocument: Document{
    override init() {
        super.init()
        self.name = "[Untitled]"
    }
    override init(name: String){
        super.init()
        if name.isEmpty{
            self.name = "[untitled]"
        }else{
            self.name = name
        }
    }
}

//  Force unwrapping

class UntitledDocument: Document {
    override init() {
        super.init(name: "[Untitled]")!
    }
}


