import Foundation

// Main Queue
DispatchQueue.main.async {
    print(Thread.isMainThread ? "Execution on main thread" : "Execution on some other thread")
}

// Global Concurrent Queue
DispatchQueue.global().async {
    print(Thread.isMainThread ? "Execution on main thread" : "Execution on Global Concurrent Queue")
}
