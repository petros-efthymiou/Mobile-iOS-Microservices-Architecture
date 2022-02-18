//
//  MockResolver.swift
//  HomeFrameworkTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//
import Foundation
@testable import Home
import Resolver
import RxBlocking
import Mockingbird
import RxSwift

extension Resolver {
    static var mocked = Resolver(child: .main)
    
    static func registerMockServices() {
        root = Resolver.mocked
        defaultScope = .application
        let service = mock(ArticlesService.self)
        given(service.fetchArticles()).willReturn(Observable.just(articlesRaw))
        
        Resolver.mocked.register { ArticlesMapperDb() }
        Resolver.mocked.register { ArticlesMapperPlain() }
        Resolver.mocked.register { AuthorsMapperPlain() }
        Resolver.mocked.register { ArticleDao() }
        Resolver.mocked.register { service }.implements(ArticlesService.self)
    }
}
