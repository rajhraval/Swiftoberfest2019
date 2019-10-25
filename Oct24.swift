// Checking one date similar to another

let first = Date()
let second = Date().addingTimeInterval(86400)


// Checks whether they occur in same day
let sameDay = Calendar.current.isDate(first, equalTo: second, toGranularity: .day)
print(sameDay)

// Checks date pointing to some time of the day
let isToday = Calendar.current.isDateInToday(first)
print(isToday)
