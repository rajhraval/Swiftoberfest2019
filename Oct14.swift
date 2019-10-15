import UIKit

//MARK: map()

let numbers = [1, 2, 3, 5, 9]

// Map means transform one thing to another
let doubled = numbers.map { $0 * 2 }

// It works with any data type
let strings = numbers.map { String($0) }

let squareStrings = ["1", "4", "9", "16", "25"]

// Returns Int? since there might be String(eg: Word) that cannot be converted to Int
let squares = squareStrings.map { Int($0) }

print(squares)

//MARK: compactMap()

let strings = ["1", "2", "3", "5", "9", "Fish"]

// compactMap helps to discard optionals by unwrapping them
let numbers = strings.compactMap { Int($0) }

// will print [1, 2, 3, 5, 9] and discard Fish because it is String that cannot be converted to Int
print(numbers)

