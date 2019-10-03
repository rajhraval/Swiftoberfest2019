import UIKit

let exampleDate = Date().addingTimeInterval(-86400)
let exampleDate2 = Date().addingTimeInterval(12)

let formatter = RelativeDateTimeFormatter()
formatter.unitsStyle = .full

let relativeDate = formatter.localizedString(for: exampleDate, relativeTo: Date())
let relativeDate2 = formatter.localizedString(for: exampleDate2, relativeTo: Date())

    
