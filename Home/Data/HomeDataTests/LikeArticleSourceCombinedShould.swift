//
//  LikeArticleSourceCombined.swift
//  HomeDataTests
//
//  Created by Petros Efthymiou on 15/02/2022.
//

import XCTest
import HomeApplication
import Resolver
import RxBlocking
import RxSwift
import Mockingbird
@testable import HomeData

class LikeArticleSourceCombinedShould: XCTestCase {
    
    var sut: LikeArticleSourceCombined?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = LikeArticleSourceCombined()
    }
    
    func testFindArticle() throws {
        let result = try sut!.findArticle(id: articlePlain1.id).toBlocking().first()
                
        XCTAssertEqual(foundArticlesData, result)
    }
    
    func testFindsArticleFromLocalSources() {
        let articleSource: ArticleDataSourceLocal = Resolver.resolve()
        let authorSource: AuthorDataSourceLocal = Resolver.resolve()
        let likesSource: LikesDataSourceLocal = Resolver.resolve()
        
        sut!.findArticle(id: articlePlain1.id)
        
        verify(articleSource.findArticle(id: articlePlain1.id)).wasCalled(1)
        verify(authorSource.findAuthors()).wasCalled(1)
        verify(likesSource.findLikedArticles()).wasCalled(1)
    }
    
    func testUpdatesArticleToLocalAndRemoteSources() {
        let articleSource: ArticleDataSourceLocal = Resolver.resolve()
        let articleSourceRemote: ArticleDataSourceRemote = Resolver.resolve()
        let likesSource: LikesDataSourceLocal = Resolver.resolve()
        
        sut?.updateArticle(articlePlain: articlePlain1)
        
        verify(likesSource.saveLikedArticle(id: articlePlain1.id)).wasCalled(1)
        verify(articleSource.updateArticle(plain: articlePlain1)).wasCalled(1)
        verify(articleSourceRemote.updateArticleToServer(plain: articlePlain1)).wasCalled(1)
    }
}
