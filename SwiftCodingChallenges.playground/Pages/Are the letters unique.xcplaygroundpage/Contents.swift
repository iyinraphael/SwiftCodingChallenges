//: [Previous](@previous)

import Foundation

// MARK: - Instruction
/** Write a function that accepts a String as its only parameter, and returns true if the string has
 only unique letters, taking letter case into account.*/

// MARK: - Solution
func challenge1(input: String) -> Bool {
    var count = 0
    let array = Array(input)
    while count < array.count - 1 {
        if array[count] == array[count + 1] {
            return false
        }
        count += 1
    }
    return true
}

challenge1(input: "No duplicates")
challenge1(input: "abcdefghijklmnopqrstuvwxyz")
challenge1(input: "AaBbCc")
challenge1(input: "Hello, world")

// MARK: - Performant Solution
func challenge1a(input: String) -> Bool {
    return Set(input).count == input.count
}
challenge1a(input: "No duplicates")
challenge1a(input: "abcdefghijklmnopqrstuvwxyz")
challenge1a(input: "AaBbCc")
challenge1a(input: "Hello, world")

//: [Next](@next)
