//
//  MovieList.swift
//  Demo2
//
//  Created by GitHub Copilot on 2025/4/7.
//

import SwiftUI

struct MovieList: View {
    let movies = [
        Movie(
            name: "星際大戰",
            coverImage: "starwars",
            description:
                "星際大戰系列講述的是在一個遙遠的銀河系中，圍繞絕地武士，西斯尊主和帝國軍隊等之間的史詩式太空冒險。主線故事涉及善良的絕地武士與邪惡的西斯尊主之間的鬥爭，他們都可以使用原力，這是一種無所不在的能量場，賦予使用者各種超凡的能力。"
        ),
        Movie(
            name: "復仇者聯盟",
            coverImage: "avengers",
            description:
                "復仇者聯盟系列展示了一群超級英雄集結在一起對抗威脅地球和宇宙的各種邪惡勢力。這個團隊由尼克·弗瑞領導的神盾局組建，包括鋼鐵人、美國隊長、雷神、綠巨人浩克、黑寡婦和鷹眼等英雄。每個英雄都有其獨特的能力和背景故事，他們一起打敗了洛基、奧創、薩諾斯等強大的反派。"
        ),
    ]

    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<movies.count) { index in
                    let movie = movies[index]
                    NavigationLink {
                        MovieDetail(movie: movie)
                    } label: {
                        MovieRow(movie: movie)
                    }
                }
            }
            .navigationTitle("好看的電影")
        }
    }
}

#Preview {
    MovieList()
}
