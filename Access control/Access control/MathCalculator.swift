//
//  MathCalculator.swift
//  Access control
//
//  Created by ashwin-pt6735 on 31/01/23.
//

import Foundation

class MathDoer{
    public func perform(x: Int , y: Int) -> Int{
        return add(x: x, y: y)
    }
    private func add(x: Int, y: Int) -> Int{
        return x + y
    }
}
