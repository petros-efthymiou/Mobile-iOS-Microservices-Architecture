//
//  LikesDataSourceLocal.swift
//  Home
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import Foundation
import RxSwift

public protocol LikesDataSourceLocal {
    
    func findLikedArticles() -> Observable<[String]>
    
    func saveLikedArticle(id: String)
}
