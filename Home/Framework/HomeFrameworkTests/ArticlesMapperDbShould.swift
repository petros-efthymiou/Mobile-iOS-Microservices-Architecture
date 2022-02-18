//
//  ArticlesMapperDbShould.swift
//  HomeFrameworkTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation
import XCTest
@testable import Home

class ArticlesMapperDbShould: XCTestCase {
    
    var sut = ArticlesMapperDb()
    
    func testMapArticlesRawToDb() throws {
        let result = sut.mapRawsToDbs(articlesRaw: articlesRaw)
        
        XCTAssertEqual(articlesDb, result)
    }
    
    func testMapArticleRawToDb() throws {
        let result = sut.mapToDb(raw: articleRaw1)
        
        XCTAssertEqual(articleDb1, result)
    }
    
    func testMapDbToRaw() throws {
        let result = sut.mapToRaw(db: articleDb1)
        
        XCTAssertEqual(articleRaw1, result)
    }
}
