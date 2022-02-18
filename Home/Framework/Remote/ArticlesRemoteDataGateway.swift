//
//  ArticlesRemoteDataGateway.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation
import HomeData
import Resolver
import RxSwift
import HomeApplication

class ArticlesRemoteDataGateway: ArticleDataSourceRemote {
    
    @Injected private var service: ArticlesService
    @Injected private var dao: ArticleDao
    @Injected private var mapperDb: ArticlesMapperDb
    @Injected private var mapperPlain: ArticlesMapperPlain
    
    func fetchArticles() -> Observable<[ArticlePlain]> {
        return service.fetchArticles()
            .map { articleRaw in
                self.mapperDb.mapRawsToDbs(articlesRaw: articleRaw)
            }.do { articlesDb in
                self.dao.nukeAndUpdate(articlesDb: articlesDb)
            }.map { articlesDb in
                self.mapperPlain.mapToPlain(articlesDb: articlesDb)
            }
    }
    
    func updateArticleToServer(plain: ArticlePlain) {
        service.updateArticle(articleRaw: mapperDb.mapToRaw(db: self.mapperPlain.mapPlainToDb(plain: plain)))
    }
}

