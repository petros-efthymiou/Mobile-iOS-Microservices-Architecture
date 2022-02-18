//
//  Mobile_Microservices_ArchitectureUITests.swift
//  Mobile Microservices ArchitectureUITests
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import XCTest

class ArticlesFeature: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testDisplayListOfArticles() throws {
        let app = XCUIApplication()
        app.launch()
        XCTAssertTrue(app.staticTexts["Lorem Ipsum"].exists)
        XCTAssertTrue(app.staticTexts["dolor sit amet"].exists)
        XCTAssertTrue(app.staticTexts["Petros Efthymiou"].exists)
        XCTAssertTrue(app.staticTexts["Consectetur adipiscing elit"].exists)
        XCTAssertTrue(app.staticTexts["sed do eiusmod tempor"].exists)
        XCTAssertTrue(app.staticTexts["Nikos Voulgaris"].exists)
    }
}

