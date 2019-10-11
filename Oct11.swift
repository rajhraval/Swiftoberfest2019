let classes = [
    ["Ash", "Brock", "Misty"],
    ["Gloria", "Piper", "Suzanne"],
    ["Picard", "Riker", "Troi"]
]

// Returns type of FlattenSequence<[[String]]>
let students = classes.joined()

// Returns type Array<String>
let newStudents = Array(classes.joined())


