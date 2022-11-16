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

for i in 0...15 {
    newValue = values[i] + values[i+1]
    values.append(newValue)
}
print(values)

// recursive
func fibonacciSequence(with i: inout Int, with j: inout Int) {
    let k = i + j
    print(k, terminator: " ")
    i = j
    j = k
    if k <= 1000 {
        fibonacciSequence(with: &i, with: &j)
    } else {
        print("That's the Fibonacci Sequence!")
    }
}

var valueOne = 0
var valueTwo = 1
print(valueOne, terminator: " ")
print(valueTwo, terminator: " ")
fibonacciSequence(with: &valueOne, with: &valueTwo)
