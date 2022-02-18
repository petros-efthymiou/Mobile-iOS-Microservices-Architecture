//
//  HomeViewModelShould.swift
//  HomePresentationTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation
import Resolver
import XCTest
import RxSwift
import RxBlocking
@testable import HomePresentation

class HomeViewModelShould: XCTestCase {
    
    var sut: HomeViewModel?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = HomeViewModel()
    }
    
    func testMapResultToState() throws {
        sut?.handleIntent(intent: HomeIntent.ViewArticles)
        
        let result = sut!.state
        
        XCTAssertEqual(HomeState.success(articles: articlesPresentation), result)
    }
}
