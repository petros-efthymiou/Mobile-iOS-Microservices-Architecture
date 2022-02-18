//
//  GetArticlesSource.swift
//  Home
//
//  Created by Petros Efthymiou on 25/01/2022.
//

import Foundation
import RxSwift

public protocol GetArticlesSource {
    
    func articles() -> Observable<ArticlesAuthorsLikes>
}
