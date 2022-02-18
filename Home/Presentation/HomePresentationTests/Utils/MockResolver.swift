//
//  MockResolver.swift
//  HomePresentationTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation

import Foundation
@testable import HomePresentation
import Resolver
import RxBlocking
import Mockingbird
import RxSwift

extension Resolver {

    static func registerMockServices() {
        Resolver.register { ArticlesPresentationMapper() }
        Resolver.register { HomeStateMapper() }
    }
}
