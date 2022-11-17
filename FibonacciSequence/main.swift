//
//  main.swift
//  FibonacciSequence
//
//  Created by Joyce Tao on 2022-11-15.
//

import Foundation

// MARK: Iteration
var values = [0,1]
var newValue = 0

for i in 0...15 {
    newValue = values[i] + values[i+1]
    values.append(newValue)
}
print(values)

// MARK: Recursion
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

// MARK: Recursion Sample Solution
// Get the next term in a Fibonacci sequence, using recursion
func fibonacciSequenceNextTermWithRecursion(termNMinus2: inout Int, termNMinus1: inout Int, currentTerm: inout Int, totalTerms: Int) {
    
    // Get the current term's value
    let currentTermValue = termNMinus2 + termNMinus1
    
    // Print the current term
    print(", \(currentTermValue)", terminator: " ")
    
    // Update prior terms
    termNMinus2 = termNMinus1
    termNMinus1 = currentTermValue
    
    // Increment what term we are on
    currentTerm += 1
    
    // Base case
    if currentTerm == totalTerms {
        return
    } else {
        // Not done finding terms, so keep invoking the function
        // This is the recursive case
        fibonacciSequenceNextTermWithRecursion(termNMinus2: &termNMinus2, termNMinus1: &termNMinus1, currentTerm: &currentTerm, totalTerms: totalTerms)
    }
}

// Print the Fibonacci Sequence using recursion
func fibonacciSequencByRecursion(terms: Int) {
    
    if terms <= 0 {
        print("/")
    } else if terms == 1 {
        print(0, terminator: "")
    } else if terms == 2 {
        print(0, 1, terminator: "")
    } else {
        print(0, 1, terminator: "")
        
        var termNMinus2 = 0
        var termNMinus1 = 1
        var currentTerm = 2
        
        // Start using the recursive function
        fibonacciSequenceNextTermWithRecursion(termNMinus2: &termNMinus2, termNMinus1: &termNMinus1, currentTerm: &currentTerm, totalTerms: terms)
    }
    
    // Place any input that follows on the next line
    print("")
}

fibonacciSequencByRecursion(terms: 10)
