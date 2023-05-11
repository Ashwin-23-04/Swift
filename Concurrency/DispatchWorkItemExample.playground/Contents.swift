import Foundation

let queue = DispatchQueue(label: "com.dispatch.workitem")

let workItem  =  DispatchWorkItem(){
    print("Stored Task")
}


queue.async(execute : workItem)
queue.asyncAfter(deadline: DispatchTime.now() + 1, execute : workItem)

workItem.cancel()
queue.async(execute : workItem)

if workItem.isCancelled {
    print("Workitem has been cancelled")
}

