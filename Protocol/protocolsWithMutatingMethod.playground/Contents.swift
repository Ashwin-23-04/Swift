protocol Togglable{
    mutating func toggle()
}

enum OnOffSwitch: Togglable{
    case off, on
    mutating func toggle() {
        switch self{
        case .off:
            self = .on
        case .on:
            self = .off
        }
    }
}

var lightSwitch = OnOffSwitch.off
lightSwitch.toggle()

class ToggleClass:Togglable {
    var someBool = false
    func toggle() {
        someBool = true
    }
}

let toggleClassObj = ToggleClass()
toggleClassObj.toggle()

// If you mark a protocol instance method requirement as mutating, you do not need to write the mutatingkeyword when writing an implementation of that method for a class. The mutating keyword is only used by structures and enumerations.
