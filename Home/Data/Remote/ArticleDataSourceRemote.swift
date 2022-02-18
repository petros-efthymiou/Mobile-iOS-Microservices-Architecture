//
//  ArticleDataSourceRemote.swift
//  Home
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import Foundation
import RxSwift
import HomeApplication

public protocol ArticleDataSourceRemote {
    
    func fetchArticles() -> Observable<[ArticlePlain]>
    
    func updateArticleToServer(plain: ArticlePlain)
}
