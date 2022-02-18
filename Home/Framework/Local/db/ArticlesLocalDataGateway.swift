//
//  ArticlesLocalDataGateway.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation
import HomeData
import RxSwift
import HomeApplication
import Resolver


class ArticlesLocalDataGateway : ArticleDataSourceLocal {
    
    @Injected private var mapper: ArticlesMapperPlain
    @Injected private var dao: ArticleDao
    private lazy var stream: Observable<[ArticlePlain]> = dao.stream.map({ articlesDb in
        self.mapper.mapToPlain(articlesDb: articlesDb)
    }).asObservable()
    
    func streamAllArticles() -> Observable<[ArticlePlain]> {
        return stream
    }
    
    func findArticle(id: String) -> ArticlePlain {
        let articleDb = dao.findArticle(id: id)
        
        return mapper.mapArticleDbToPlain(db: articleDb)
    }
    
    func updateArticle(plain: ArticlePlain) {
        dao.updateArticle(db: mapper.mapPlainToDb(plain: plain))
    }
}
