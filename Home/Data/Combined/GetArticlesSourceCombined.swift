//
//  GetArticlesSourceCombined.swift
//  Home
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import Foundation
import RxSwift
import HomeApplication
import Resolver

public class GetArticlesSourceCombined : GetArticlesSource {
    
    @Injected var articleLocalSource: ArticleDataSourceLocal
    @Injected var articleRemoteSource: ArticleDataSourceRemote
    @Injected var authorLocalSource: AuthorDataSourceLocal
    @Injected var likesLocalSource: LikesDataSourceLocal
    @Injected var mapper: ArticlesAuthorsLikesMapper
    
    public init() {
        
    }
    
    public func articles() -> Observable<ArticlesAuthorsLikes> {
        let articlesSource = Observable.of(articleLocalSource.streamAllArticles(), articleRemoteSource.fetchArticles()).merge()
        
        let authorsSource = authorLocalSource.findAuthors()
        let likedArticlesIdsSource = likesLocalSource.findLikedArticles()
        
        return Observable.combineLatest(
            articlesSource,
            authorsSource,
            likedArticlesIdsSource
        ).map { articles, authors, likes in
            self.mapper.map(articlesPlain: articles, authorsPlain: authors, likedArticlesIds: likes)
        }
    }
}
