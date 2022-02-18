//
//  AuthorsMapperPlainShould.swift
//  HomeFrameworkTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation
import XCTest
@testable import Home

class AuthorsMapperPlainShould: XCTestCase {
    
    var sut = AuthorsMapperPlain()
    
    func testMapAuthorsLocalToPlain() throws {
        let result = sut.mapToPlain(authorsLocal: authorsLocal)
        
        XCTAssertEqual(authorsPlain, result)
    }
}
