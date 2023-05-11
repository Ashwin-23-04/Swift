//Protocol Inheritance
//A protocol can inherit one or more other protocols. The syntax of protocol inheritance is similar to class inheritance.

protocol SomeProtocol{
    
}
protocol AnotherProtocol{
    
}

protocol InheritingProtocol: SomeProtocol, AnotherProtocol{
    
}

//Class-Only Protocols
//You can limit protocol adoption to class types (and not structures or enumerations) by adding the AnyObject or class protocol to a protocol’s inheritance list.

protocol SomeClassOnlyProtocol: AnyObject, InheritingProtocol{
    var age: Int? {get}
}

// Only used in classes

class Person: SomeClassOnlyProtocol{
    var age: Int?{
        return 10
    }
}

// ERROR while using struct

//struct Person: SomeClassOnlyProtocol{
//    var age: Int?{
//        return 10
//    }
//}
