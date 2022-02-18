//
//  HomeApplicationTests.swift
//  HomeApplicationTests
//
//  Created by Petros Efthymiou on 07/02/2022.
//

import XCTest
@testable import HomeApplication
import Resolver
import RxBlocking
import RxSwift
import Mockingbird

class GetArticlesUseCaseShould: XCTestCase {
    
    var sut: GetArticles?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = GetArticles()
    }
    
    func testRetrieveArticlesFromSource() throws {
        sut!.articles()
        
        let source: GetArticlesSource = Resolver.resolve()
        
        verify(source.articles()).wasCalled(1)
    }
    
    func testEmitArticles() throws {
        let result = try sut!.articles().toBlocking().first()
        
        XCTAssertEqual(articles, result)
    }
}
