import Foundation

print("Execution Started...")
testOperation()
print("Execution Finished !")

func testOperation(){
//    let operation: BlockOperation = BlockOperation {
//        print("First Test")
//        sleep(5)
//    }
    
    let operation: BlockOperation = BlockOperation()
    
    operation.completionBlock = {
        print("This is a completion block")
    }
    
    operation.addExecutionBlock {
        print("First block")
    }
    operation.addExecutionBlock {
        print("Second block")
    }
    operation.addExecutionBlock {
        print("Third block")
    }
    // to change from main thread to another thread
    DispatchQueue.global().async {
        operation.start()
        print("Did it run on main Thread \(Thread.isMainThread)")
    }
//    operation.start()
//    print(Thread.isMainThread)
}
