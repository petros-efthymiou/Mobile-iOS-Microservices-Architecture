//
//  LikeArticleUseCase.swift
//  HomeApplicationTests
//
//  Created by Petros Efthymiou on 15/02/2022.
//

import Foundation
import XCTest
@testable import HomeApplication
import Resolver
import RxBlocking
import RxSwift
import Mockingbird

class LikeArticleUseCaseShould: XCTestCase {
    
    var sut: LikeArticle?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()

        sut = LikeArticle()
    }

     
     func testFindsArticleFromSource() throws {
         let likeArticleSource: LikeArticleSource = Resolver.resolve()
         
         sut?.likeArticle(id: article1.id)
         
         verify(likeArticleSource.findArticle(id: article1.id)).wasCalled()
     }
}
