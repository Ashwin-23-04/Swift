// Delegation is a design pattern that enables a class or structure to hand off (or delegate) some of its responsibilities to an instance of another type. Delegation pattern can also be used as a callback kind of mechanism.

protocol CallBackDelegate{
    func somethingHappened()
}

class Class1{
    var delegate: CallBackDelegate?
    func doSomething(){
        delegate?.somethingHappened()
    }
}

class Class2: CallBackDelegate{
    func somethingHappened() {
        print("Something Happened callback called")
    }
}

let class1 = Class1()
let class2 = Class2()

class1.delegate = class2
class1.doSomething()
