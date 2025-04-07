import SwiftUI

struct ContentView: View {

    var body: some View {
        TabView {
            Tab("Books", systemImage: "books.vertical") {
                BookList()
            }
            Tab("Movies", systemImage: "film") {
                MovieList()
            }
        }
    }
}

#Preview {
    ContentView()
}
