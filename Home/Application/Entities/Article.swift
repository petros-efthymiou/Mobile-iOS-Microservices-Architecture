//
//  Article.swift
//  Home
//
//  Created by Petros Efthymiou on 25/01/2022.
//

import Foundation

public struct Article: Equatable {
    
    public init(id: String, title: String, desc: String, date: String, readTime: Int, category: ArticleCategory, imageUrl: String, likes: Int, authorName: String, canLike: Bool) {
        self.id = id
        self.title = title
        self.desc = desc
        self.date = date
        self.readTime = readTime
        self.category = category
        self.imageUrl = imageUrl
        self.likes = likes
        self.authorName = authorName
        self.canLike = canLike
    }
    
    public let id: String
    public let title: String
    public let desc: String
    public let date: String
    public let readTime: Int
    public let category: ArticleCategory
    public let imageUrl: String
    public let likes: Int
    public let authorName: String
    public let canLike: Bool
    
    func likeArticle() -> Article? {
        if(canLike) {
            return Article(id: id,
                           title: title,
                           desc: desc,
                           date: date,
                           readTime: readTime,
                           category: category,
                           imageUrl: imageUrl,
                           likes: likes + 1,
                           authorName: authorName,
                           canLike: canLike)
        } else {
            return nil
        }
    }
}
