//
//  ArticlesLocalDataGatewayShould.swift
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

class ArticlesLocalDataGatewayShould: XCTestCase {
    
    var sut: ArticlesLocalDataGateway?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = ArticlesLocalDataGateway()
    }
    
    func testStreamAllArticles() throws {
        let result = try sut!.streamAllArticles().toBlocking().first()
        
        XCTAssertEqual(localArticlesPlain, result)
    }
    
    func testFindsLocalArticle() throws {
        let result = sut!.findArticle(id: localArticlePlain1.id)
        
        XCTAssertEqual(localArticlePlain1, result)
    }
    
    func testUpdateArticle() throws {
        sut!.updateArticle(plain: localUpdatedArticlePlain1)
        
        let result = try sut!.streamAllArticles().toBlocking().first()
        
        XCTAssertEqual([localUpdatedArticlePlain1, localArticlePlain2], result)
    }
}
