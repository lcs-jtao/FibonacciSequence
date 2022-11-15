//
//  main.swift
//  FibonacciSequence
//
//  Created by Joyce Tao on 2022-11-15.
//

import Foundation

// iteration
var values = [0,1]
var newValue = 0

for i in 0...10 {
    newValue = values[i] + values[i+1]
    values.append(newValue)
}
print(values)

