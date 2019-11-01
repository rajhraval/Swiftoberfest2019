import Foundation

// Converting Date and Time formats using DateFormatter class


// A Date Instance

let today = Date()

// Converting Date instance to one of the built-in Date Formats

let firstFormatter = DateFormatter()
firstFormatter.dateStyle = .short
print(firstFormatter.string(from: today))

// Converting Date instance to one of the built-in Time Formats

let secondFormatter = DateFormatter()
secondFormatter.timeStyle = .medium
print(secondFormatter.string(from: today))

// Converting Date instance to custom format (time/date)

let customFormatter = DateFormatter()
customFormatter.dateFormat = "HH:mm E, d MMM y"
print(customFormatter.string(from: today))

// Converting a string to a Date

let str = "22:47 Fri, 1 Nov 2019"
let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "HH:mm E, d MMM y"
print(dateFormatter.date(from: str) ?? "Unknown Date")
