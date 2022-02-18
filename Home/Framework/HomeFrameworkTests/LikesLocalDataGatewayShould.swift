//
//  LikesLocalDataGatewayShould.swift
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

class LikesLocalDataGatewayShould: XCTestCase {
    
    var sut: LikesLocalDataGateway?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = LikesLocalDataGateway()
    }
    
    func testStreamAllLikes() throws {
        let result = try sut!.findLikedArticles().toBlocking().first()
        
        XCTAssertEqual([], result)
    }
    
    func testSavedLikedArticleId() throws {
        sut?.saveLikedArticle(id: "articleId1")
        
        let result = try sut!.findLikedArticles().toBlocking().first()
        
        XCTAssertEqual(["articleId1"], result)
    }
}

