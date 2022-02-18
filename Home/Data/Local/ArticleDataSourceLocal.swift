//
//  ArticleDataSourceLocal.swift
//  Home
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import Foundation
import RxSwift
import HomeApplication

public protocol ArticleDataSourceLocal {
    
    func streamAllArticles() -> Observable<[ArticlePlain]>
    
    func findArticle(id: String) -> ArticlePlain
    
    func updateArticle(plain: ArticlePlain)
}
