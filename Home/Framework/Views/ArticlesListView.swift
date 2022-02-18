//
//  ArticleCardView.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation
import SwiftUI
import HomeApplication
import HomePresentation

struct ArticlesListView: View {
    
    let articles: [ArticlePresentation]
    let likeArticle: ((_ _id: String) -> Void)
    
    var body: some View {
        List(articles) { (article) in
            ArticleCardView(article: article, likeArticle: likeArticle)
        }
    }
}

struct ArticleCardView: View {
    let article: ArticlePresentation
    let likeArticle: ((_ _id: String) -> Void)
    
    var body: some View {
        VStack {
            VStack(alignment: HorizontalAlignment.leading) {
                AsyncImage(url: URL(string: article.imageUrl),
                           content: { image in
                    image.resizable()
                        .aspectRatio(contentMode: .fit)
                },
                           placeholder: {
                    ProgressView()
                })
                
                
                Text(article.title)
                    .font(.title)
                    .foregroundColor(.primary)
                Spacer()
                Text(article.desc)
                    .font(.headline)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                Spacer()
                Text(article.authorName)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            
            VStack(alignment: HorizontalAlignment.trailing) {
                HStack {
                    Text(String(article.likes)).font(Font.headline)
                        .font(.system(size: 24))
                    Image(systemName: "star").foregroundColor(.blue)
                        .font(.system(size: 28)).opacity(article.likeActionAlpha)
                }
            }.onTapGesture {
                if(article.canLike) {
                    likeArticle(article.id)
                }
            }.padding(.leading)
        }
    }
}
