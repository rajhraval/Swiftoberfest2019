import PlaygroundSupport
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello World")
            Text("This is SwiftUI!")
        }
    }
}

let host = UIHostingController(rootView: ContentView())
PlaygroundPage.current.liveView = host
