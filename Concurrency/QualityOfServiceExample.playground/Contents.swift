import Foundation


DispatchQueue.global(qos: .background).async { // less priority
    for i in 11...21{
        print(i)
    }
}


DispatchQueue.global(qos: .userInteractive).async { // high priority
    for i in 0...10{
        print(i)
    }
}
