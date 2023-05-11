import Foundation

class CustomOperation: Operation {
    override func main() {
        for i in 1...10{
            print(i)
        }
    }
}

let operation: CustomOperation = CustomOperation()
operation.start()
print("Operation is executed")
