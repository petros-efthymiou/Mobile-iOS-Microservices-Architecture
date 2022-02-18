//
//  GetArticlesSourceCombinedShould.swift
//  HomeDataTests
//
//  Created by Petros Efthymiou on 15/02/2022.
//

import Foundation

import XCTest
import HomeApplication
import Resolver
import RxBlocking
import RxSwift
import Mockingbird
@testable import HomeData

class GetArticlesSourceCombinedShould: XCTestCase {
    
    var sut: GetArticlesSourceCombined?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = GetArticlesSourceCombined()
    }
    
    func testAggregateAllArticlesData() throws {
        let result = try sut!.articles().toBlocking().first()
                
        XCTAssertEqual(articlesData, result)
    }
    
    func testAggregateArticlesFromLocalAndRemoteSources() throws {
        let localSource: ArticleDataSourceLocal = Resolver.resolve()
        let remoteSource: ArticleDataSourceRemote = Resolver.resolve()
        
        sut!.articles()
                
        verify(localSource.streamAllArticles()).wasCalled(1)
        verify(remoteSource.fetchArticles()).wasCalled(1)
    }
    
    func testGetsAuthorsFromLocalStorage() throws {
        let localSource: AuthorDataSourceLocal = Resolver.resolve()
        
        sut!.articles()
        
        verify(localSource.findAuthors()).wasCalled(1)
    }
    
    func testGetsLikesFromLocalStorage() throws {
        let localSource: LikesDataSourceLocal = Resolver.resolve()
        
        sut!.articles()
        
        verify(localSource.findLikedArticles()).wasCalled(1)
    }
}
