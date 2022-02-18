//
//  ArticlesRemoteDataGatewayShould.swift
//  HomeFrameworkTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation
import XCTest
@testable import Home
import Resolver
import RxBlocking
import RxSwift
import Mockingbird

class ArticlesRemoteDataGatewayShould: XCTestCase {
    
    var sut: ArticlesRemoteDataGateway?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = ArticlesRemoteDataGateway()
    }
    
    func testFetchAllArticles() throws {
        let result = try sut!.fetchArticles().toBlocking().first()
        
        XCTAssertEqual(articlesPlain, result)
    }
    
    func testUpdateArticle() throws {
        sut!.updateArticleToServer(plain: articlePlain1)
        
        let service: ArticlesService = Resolver.resolve()
        
        verify(service.updateArticle(articleRaw: articleRaw1)).wasCalled(1)
    }
}
