//
//  LikeArticleSourceCombined.swift
//  Home
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import Foundation
import HomeApplication
import RxSwift
import Resolver

public class LikeArticleSourceCombined : LikeArticleSource {
    
    @Injected var articleLocalSource: ArticleDataSourceLocal
    @Injected var articleRemoteSource: ArticleDataSourceRemote
    @Injected var authorLocalSource: AuthorDataSourceLocal
    @Injected var likesLocalSource: LikesDataSourceLocal
    @Injected var mapper: ArticlesAuthorsLikesMapper
    
    public init() {
        
    }

    public func findArticle(id: String) -> Observable<ArticlesAuthorsLikes> {
        let articlePlain = articleLocalSource.findArticle(id: id)
        let authorsSource =  authorLocalSource.findAuthors()
        let likesSource = likesLocalSource.findLikedArticles()
        
        return Observable.zip(authorsSource, likesSource) { (authors, likes) in
            self.mapper.map(articlesPlain: [articlePlain], authorsPlain: authors, likedArticlesIds: likes)
        }
    }
    
    public func updateArticle(articlePlain: ArticlePlain) {
        likesLocalSource.saveLikedArticle(id: articlePlain.id)
        articleLocalSource.updateArticle(plain: articlePlain)
        articleRemoteSource.updateArticleToServer(plain: articlePlain)
    }
}
