class StepCounter{
    var totalSteps: Int = 0{
        willSet(newTotalSteps){ // before the value is stored
            print("Total number of steps : \(newTotalSteps)")
        }
        didSet { // after the value is stored
            if totalSteps > oldValue{
                print("Added steps \(totalSteps-oldValue) ")
            }
        }
    }
}

let counter = StepCounter() // here let is used because class is reference type so it won't affect the changes in variable inside class

counter.totalSteps = 100
counter.totalSteps = 1000
