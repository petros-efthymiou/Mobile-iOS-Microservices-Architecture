//
//  ArticlesMapperShould.swift
//  HomeApplicationTests
//
//  Created by Petros Efthymiou on 15/02/2022.
//

import XCTest
@testable import HomeApplication

class ArticlesMapperShouldShould: XCTestCase {
    
    var sut = ArticlesMapper()
    
    func testMapToArticle() throws {
        let result = sut.mapArticle(articlePlain: articlePlain1, authorsPlain: authorsPlain, likedArticlesIds: likedArticleIds)
        
        XCTAssertEqual(article1, result)
    }
    
    func testMapToPlain() throws {
        let result = sut.mapToPlain(domain: article1, authorId: articlePlain1.authorId, words: articlePlain1.words)
        
        XCTAssertEqual(articlePlain1, result)
    }
    
    func testMapArticlesPlainToArticles() throws {
        let result = sut.map(data: articlesData)
        
        XCTAssertEqual(articles, result)
    }
}
