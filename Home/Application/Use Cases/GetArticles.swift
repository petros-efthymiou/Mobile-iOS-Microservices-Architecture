//
//  GetArticles.swift
//  Home
//
//  Created by Petros Efthymiou on 25/01/2022.
//

import Foundation
import RxSwift
import Resolver

public class GetArticles {
    @Injected var source: GetArticlesSource
    @Injected var mapper: ArticlesMapper
    
    public init() {
        
    }
    
    public func articles() -> Observable<[Article]> {
        
        return source.articles().map { articlesAuthorsLikes in
            self.mapper.map(data: articlesAuthorsLikes)
        }
    }
}
