//
//  MockResolver.swift
//  HomeApplicationTests
//
//  Created by Petros Efthymiou on 07/02/2022.
//

import Foundation
@testable import HomeApplication
import Resolver
import RxBlocking
import Mockingbird
import RxSwift

extension Resolver {
    
    static func registerMockServices() {
        
        Resolver.register { ArticlesMapper() }
        
        let getArticlesSource = mock(GetArticlesSource.self)
        let likeArticlesSource = mock(LikeArticleSource.self)
        
        given(getArticlesSource.articles()).willReturn(Observable.just(articlesData))
        given(likeArticlesSource.findArticle(id: article1.id)).willReturn(Observable.just(articlesData))
        
        //TODO can we stub concrete classes?
//        var mapper: ArticlesMapper = mock(ArticlesMapper.self).initialize()
//        given(mapper.map(data: articlesData)).willReturn(articles)
//
//        given(mapper.mapArticle(articlePlain: articlePlain1, authorsPlain: authorsPlain, likedArticlesIds: likedArticleIds)).willReturn(article1)
//
//        given(mapper.mapArticle(articlePlain: articlePlain2, authorsPlain: authorsPlain, likedArticlesIds: likedArticleIds)).willReturn(article2)
//
//        given(mapper.mapToPlain(domain: article1, authorId: articlePlain1.authorId, words: articlePlain1.words)).willReturn(articlePlain1)
        
        Resolver.register { getArticlesSource }.implements(GetArticlesSource.self)
        Resolver.register { likeArticlesSource }.implements(LikeArticleSource.self)
        Resolver.register { DisposeBag() }
    }
}

