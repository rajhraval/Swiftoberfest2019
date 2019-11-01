import Foundation
import UserNotifications

// Grouping User Notifications

let content = UNMutableNotificationContent()
content.title = reminder.title
content.threadIdentifier = "F39-C521-A7A"
content.summaryArgument = messageSender.name

// Example : You got a Message from Andrew - Hey, check this out!

