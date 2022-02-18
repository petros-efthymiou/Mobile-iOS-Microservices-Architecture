//
//  ArticlesAuthorsLikes.swift
//  Home
//
//  Created by Petros Efthymiou on 25/01/2022.
//

import Foundation

public struct ArticlesAuthorsLikes: Equatable {
    
    public init(
        articlesPlain: [ArticlePlain],
        authorsPlain: [AuthorPlain],
        likedArticlesIds: [String]
    ) {
        self.articlesPlain = articlesPlain
        self.authorsPlain = authorsPlain
        self.likedArticlesIds = likedArticlesIds
    }
    
    let articlesPlain: [ArticlePlain]
    let authorsPlain: [AuthorPlain]
    let likedArticlesIds: [String]
}
