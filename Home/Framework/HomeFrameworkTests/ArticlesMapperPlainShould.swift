//
//  ArticlesMapperPlainShould.swift
//  HomeFrameworkTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//


import Foundation
import XCTest
@testable import Home

class ArticlesMapperPlainShould: XCTestCase {
    
    var sut = ArticlesMapperPlain()
    
    func testMapArticlesDbToPlain() throws {
        let result = sut.mapToPlain(articlesDb: articlesDb)
        
        XCTAssertEqual(articlesPlain, result)
    }
    
    func testMapArticleDbToPlain() throws {
        let result = sut.mapArticleDbToPlain(db: articleDb1)
        
        XCTAssertEqual(articlePlain1, result)
    }

    func testMapArticlePlainToDb() throws {
        let result = sut.mapPlainToDb(plain: articlePlain1)
        
        XCTAssertEqual(articleDb1, result)
    }
}

