//
//  AuthorsLocalDataGatewayShould.swift
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

class AuthorsLocalDataGatewayShould: XCTestCase {
    
    var sut: AuthorLocalDataGateway?
    
    override func setUpWithError() throws {
        Resolver.registerMockServices()
        
        sut = AuthorLocalDataGateway()
    }
    
    func testStreamAllAuthors() throws {
        let result = try sut!.findAuthors().toBlocking().first()
        
        XCTAssertEqual(authorsPlain, result)
    }
}
