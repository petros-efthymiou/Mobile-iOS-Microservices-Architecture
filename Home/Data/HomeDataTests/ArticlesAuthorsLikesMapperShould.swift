//
//  ArticlesAuthorsLikesMapperShould.swift
//  HomeDataTests
//
//  Created by Petros Efthymiou on 15/02/2022.
//

import Foundation

import XCTest
@testable import HomeData

class ArticlesMapperShouldShould: XCTestCase {
    
    var sut = ArticlesAuthorsLikesMapper()
    
    func testMapDataToSingleObject() throws {
        let result = sut.map(articlesPlain: articlesPlain, authorsPlain: authorsPlain, likedArticlesIds: likedArticleIds)
        
        XCTAssertEqual(articlesData, result)
    }
}
