// Make a network request wait for an Internet Connection


let config = URLSessionConfiguration.default
config.waitsForConnectivity = true

URLSession(configuration: config).dataTask(with: yourURL) { data, response, error in
    if let error = error {
        print(error.localizedDescription)
    } ei

    // use your data here
}.resume()


// By default system waits for a week to check an Internet connection is available or not, but you handle it as per your need.

config.timeoutIntervalForResource = 60
