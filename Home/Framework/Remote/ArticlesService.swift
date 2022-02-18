//
//  ArticlesService.swift
//  Home
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation
import RxSwift

protocol ArticlesService {
    
    func fetchArticles()-> Observable<[ArticleRaw]>
    
    func updateArticle(articleRaw: ArticleRaw)
}
