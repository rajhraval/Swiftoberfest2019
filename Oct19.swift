// Allowing support to low data mode using allowsConstrainedNetworkAccess

var request = URLRequest(url: someURL)
request.allowsConstrainedNetworkAccess = false


// When that request executes iOS will immediately return an error if low data mode is enabled.

if let error = error as? URLError, error.networkUnavailableReason == .constrained {
    // Beacuse user has activated low data mode so this request could not be satisfied
}

