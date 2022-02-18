//
//  HomePresentationTests.swift
//  HomePresentationTests
//
//  Created by Petros Efthymiou on 15/02/2022.
//

import XCTest
@testable import HomePresentation

class ArticlesPresentationMapperShould: XCTestCase {

    let sut = ArticlesPresentationMapper()

    func testMapArticlesToArticlesPresentation() throws {
        let result = sut.map(articles: articles)
        
        XCTAssertEqual(articlesPresentation, result)
    }

}
