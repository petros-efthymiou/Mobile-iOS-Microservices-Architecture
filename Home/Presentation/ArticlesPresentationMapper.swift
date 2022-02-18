//
//  ArticlesPresentationMapper.swift
//  Home
//
//  Created by Petros Efthymiou on 27/01/2022.
//

import Foundation
import HomeApplication

public class ArticlesPresentationMapper {
    
    public init() {
        
    }
    
    func map(articles: [Article]) -> [ArticlePresentation] {
        return articles.map { article in
            mapArticle(article: article)
        }
    }
    
    private func mapArticle(article: Article) -> ArticlePresentation {
        return ArticlePresentation(
            id: article.id,
            title: article.title,
            desc: article.desc,
            date: article.date,
            readTime: article.readTime,
            category: mapCategory(category: article.category),
            imageUrl: article.imageUrl,
            likes: article.likes,
            authorName: article.authorName,
            canLike: article.canLike,
            likeActionAlpha: mapLikeActionAlpha(canLike: article.canLike))
    }
    
    private func mapCategory(category: ArticleCategory) -> String {
        switch category {
        case .politics:
            return "Politics"
        case .sports:
            return "Sports"
        case .music:
            return "Music"
        case .other:
            return "Other"
        }
    }
    
    private func mapLikeActionAlpha(canLike: Bool) -> Double {
        if(canLike) {
            return 1.0
        }
        return 0.2
    }
}
