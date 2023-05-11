// Optional Protocol

import Foundation

@objc protocol CounterDataScience{
    @objc optional func increment(forCount count: Int) -> Int
    @objc optional var fixedIncrement: Int {get}
}

//  you can write a custom class that conforms to CounterDataSource without implementing either protocol requirement. They’re both optional, after all. Although technically allowed, this wouldn’t make for a very good data source

class Counter{
    var count = 0
    var dataSource: CounterDataScience?
    func increment(){
        if let amount = dataSource?.increment?(forCount: count){
            count += amount
        }else if let amount = dataSource?.fixedIncrement{
            count += amount
        }
    }
}

class ThreeSource: NSObject, CounterDataScience{
    let fixedIncrement = 5
}

var counter = Counter()

counter.dataSource = ThreeSource()

for _ in 1...4 {
    counter.increment()
    print(counter.count)
}


class TowardsZeroSource: NSObject, CounterDataScience {
    func increment(forCount count: Int) -> Int {
        if count == 0 {
            return 0
        } else if count < 0 {
            return 1
        } else {
            return -1
        }
    }
}

counter.count = -4
counter.dataSource = TowardsZeroSource()

for _ in 1...5{
    counter.increment()
    print(counter.count)
}
