import SwiftUI

struct BookRow: View {
    let book: Book
    
    var body: some View {
        HStack {
            Image(book.coverImage)
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(.circle)
            Text(book.name)
            Spacer()
        }
    }
}