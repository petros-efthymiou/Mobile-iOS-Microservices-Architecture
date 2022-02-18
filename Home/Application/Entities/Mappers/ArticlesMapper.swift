//
//  ArticlesMapper.swift
//  Home
//
//  Created by Petros Efthymiou on 25/01/2022.
//

import Foundation

public class ArticlesMapper {
    
    public init() {
        
    }
    
    public func map(data: ArticlesAuthorsLikes) -> [Article]  {
        return data.articlesPlain.map { articlePlain in
            mapArticle(articlePlain: articlePlain, authorsPlain: data.authorsPlain, likedArticlesIds: data.likedArticlesIds)
        }
    }
    
    func mapArticle(articlePlain: ArticlePlain, authorsPlain: [AuthorPlain], likedArticlesIds: [String]) -> Article {
        return Article(
            id: articlePlain.id,
            title: articlePlain.title,
            desc: articlePlain.desc,
            date: articlePlain.date,
            readTime: mapReadTime(words: articlePlain.words),
            category: mapCategory(category: articlePlain.category),
            imageUrl: articlePlain.imageUrl,
            likes: articlePlain.likes,
            authorName: mapAuthorName(authorId: articlePlain.authorId, authors: authorsPlain),
            canLike: mapCanLike(articleId: articlePlain.id, likedArticlesIds: likedArticlesIds)
        )
    }
    
    private func mapReadTime(words: Int) -> Int {
        return words / 200
    }
    
    private func mapCategory(category: String) -> ArticleCategory {
        switch category {
        case "sports":
            return ArticleCategory.sports
        case "politics":
            return ArticleCategory.politics
        case "music":
            return ArticleCategory.music
        default:
            return ArticleCategory.other
        }
    }
    
    private func mapAuthorName(authorId: String, authors: [AuthorPlain]) -> String {
        return authors.first { authorPlain in
            authorPlain.id == authorId
        }?.fullName ?? ""
    }
    
    private func mapCanLike(articleId: String, likedArticlesIds: [String]) -> Bool {
        return likedArticlesIds.first { id in
            articleId == id
        } == nil
    }
    
    func mapToPlain(domain: Article, authorId: String, words: Int) -> ArticlePlain {
        return ArticlePlain(id: domain.id,
                            title: domain.title,
                            desc: domain.desc,
                            date: domain.date,
                            words: words,
                            category: reverseMapCategory(category: domain.category),
                            imageUrl: domain.imageUrl,
                            likes: domain.likes,
                            authorId: authorId)
    }
    
    private func reverseMapCategory(category: ArticleCategory) -> String {
        switch category {
        case .sports:
            return "sports"
        case .politics:
            return "politics"
        case .music:
            return "music"
        default:
            return "other"
        }
    }
}
