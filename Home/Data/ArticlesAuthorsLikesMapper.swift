//
//  ArticleAuthorsLikesMapper.swift
//  Home
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import Foundation
import HomeApplication

public class ArticlesAuthorsLikesMapper {
    
    public init() {
        
    }
    
    func map(
        articlesPlain: [ArticlePlain],
        authorsPlain: [AuthorPlain],
        likedArticlesIds: [String]
    ) -> ArticlesAuthorsLikes {
        return ArticlesAuthorsLikes(
            articlesPlain: articlesPlain,
            authorsPlain: authorsPlain,
            likedArticlesIds: likedArticlesIds
        )
    }
}
