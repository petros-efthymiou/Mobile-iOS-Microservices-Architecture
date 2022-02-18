//
//  LikeArticleSource.swift
//  Home
//
//  Created by Petros Efthymiou on 25/01/2022.
//

import Foundation
import RxSwift

public protocol LikeArticleSource {
    
    func findArticle(id: String) -> Observable<ArticlesAuthorsLikes>
    
    func updateArticle(articlePlain: ArticlePlain)
}
