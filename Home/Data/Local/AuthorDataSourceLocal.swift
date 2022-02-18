//
//  AuthorDataSourceLocal.swift
//  Home
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import Foundation
import RxSwift
import HomeApplication

public protocol AuthorDataSourceLocal {
    
    func findAuthors() -> Observable<[AuthorPlain]>
}
