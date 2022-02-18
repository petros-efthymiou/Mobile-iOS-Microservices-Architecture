//
//  MockResolver.swift
//  HomeDataTests
//
//  Created by Petros Efthymiou on 15/02/2022.
//

import Foundation
import Resolver
import RxSwift
import Mockingbird
@testable import HomeData

extension Resolver {
    
    static func registerMockServices() {
        
        Resolver.register { ArticlesAuthorsLikesMapper() }
        
        let articlesSourceRemote = mock(ArticleDataSourceRemote.self)
        let articlesSourceLocal = mock(ArticleDataSourceLocal.self)
        let likesSourceLocal = mock(LikesDataSourceLocal.self)
        let authorSourceLocal = mock(AuthorDataSourceLocal.self)
        
        given(articlesSourceRemote.fetchArticles()).willReturn(Observable.just(articlesPlain))
        given(articlesSourceLocal.streamAllArticles()).willReturn(Observable.just(articlesPlain))
        given(articlesSourceLocal.findArticle(id: articlePlain1.id)).willReturn(articlePlain1)
        given(authorSourceLocal.findAuthors()).willReturn(Observable.just(authorsPlain))
        given(likesSourceLocal.findLikedArticles()).willReturn(Observable.just(likedArticleIds))
        
        Resolver.register { articlesSourceRemote }.implements(ArticleDataSourceRemote.self)
        Resolver.register { articlesSourceLocal }.implements(ArticleDataSourceLocal.self)
        Resolver.register { likesSourceLocal }.implements(LikesDataSourceLocal.self)
        Resolver.register { authorSourceLocal }.implements(AuthorDataSourceLocal.self)
    }
}

