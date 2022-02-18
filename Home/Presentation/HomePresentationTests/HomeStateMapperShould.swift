//
//  HomeStateMapperShould.swift
//  HomePresentationTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation
import Resolver
import XCTest
@testable import HomePresentation

class HomeStateMapperShould: XCTestCase {
    
    var sut: HomeStateMapper?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = HomeStateMapper()
    }
    
    func testMapResultToState() throws {
        let result = sut!.map(articles: articles)
        
        XCTAssertEqual(HomeState.success(articles: articlesPresentation), result)
    }

    func testMapEmptyStateWhenEmptyResult() {
        let result = sut!.map(articles: [])
        
        XCTAssertEqual(HomeState.empty, result)
    }
}
