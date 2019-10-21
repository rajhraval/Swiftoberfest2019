// Inout parameters require inout keyword

// Rules:
// - 1 : Always pass variables
// - 2 : Acknowledge & to the variable, referring it might change

var number = 67

//Currently it won't return any value
func makeItTriple(_ number: inout Double) {
    number *= 3
}


Int(&number))
print(number)
