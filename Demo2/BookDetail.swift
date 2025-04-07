import SwiftUI

struct BookDetail: View {
    let book: Book
    
    var body: some View {
        VStack {
            Image(book.coverImage)
                .resizable()
                .scaledToFit()
            Text(book.description)
                .padding()
        }
        .navigationTitle(book.name)
    }
}

#Preview {
    BookDetail(book: Book(name: "彼得潘", coverImage: "peter", description: "彼得潘是一個永遠不會長大的男孩，住在夢幻島上。他與小仙子叮叮鈴和迷失的男孩們一起生活，經歷各種冒險。有一天，他帶著溫蒂和她的弟弟們從倫敦飛到夢幻島。在那裡，他們對抗邪惡的海盜船長虎克，最終戰勝了他。最後，溫蒂和弟弟們選擇回家，而彼得潘則繼續在島上過著無憂無慮的生活。"))
}