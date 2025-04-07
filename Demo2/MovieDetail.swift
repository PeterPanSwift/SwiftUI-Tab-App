//
//  MovieDetail.swift
//  Demo2
//
//  Created by GitHub Copilot on 2025/4/7.
//

import SwiftUI

struct MovieDetail: View {
    let movie: Movie

    var body: some View {
        VStack {
            Image(movie.coverImage)
                .resizable()
                .scaledToFit()
            Text(movie.description)
                .padding()
        }
        .navigationTitle(movie.name)
    }
}

#Preview {
    NavigationStack {
        MovieDetail(
            movie: Movie(
                name: "Star Wars", coverImage: "starwars",
                description:
                    "星際大戰系列講述的是在一個遙遠的銀河系中，圍繞絕地武士，西斯尊主和帝國軍隊等之間的史詩式太空冒險。主線故事涉及善良的絕地武士與邪惡的西斯尊主之間的鬥爭，他們都可以使用原力，這是一種無所不在的能量場，賦予使用者各種超凡的能力。"
            ))
    }
}
