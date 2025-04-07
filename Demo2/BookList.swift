struct BookList: View {
    let books = [
        Book(
            name: "彼得潘",
            coverImage: "peter",
            description:
                "彼得潘是一個永遠不會長大的男孩，住在夢幻島上。他與小仙子叮叮鈴和迷失的男孩們一起生活，經歷各種冒險。有一天，他帶著溫蒂和她的弟弟們從倫敦飛到夢幻島。在那裡，他們對抗邪惡的海盜船長虎克，最終戰勝了他。最後，溫蒂和弟弟們選擇回家，而彼得潘則繼續在島上過著無憂無慮的生活。"
        ),
        Book(
            name: "小王子",
            coverImage: "prince",
            description:
                "飛行員在撒哈拉沙漠墜機，遇見來自小行星B612的小王子。小王子分享了他拜訪不同星球的經歷，那些星球上住著各種奇特的人物，象徵人類的缺點和荒謬。他還談到了他珍愛的玫瑰花，因為誤解而離開了她。在地球上，他與狐狸成為朋友，學會了友情和生命的真諦。最終，小王子選擇回到自己的星球，留下飛行員反思人生的價值和意義。"
        ),
    ]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<books.count) { item in
                    let book = books[item]
                    NavigationLink(book.name) {
                        BookDetail(book: book)
                    }
                }
            }
            .navigationTitle("好看的書")
        }
    }
}