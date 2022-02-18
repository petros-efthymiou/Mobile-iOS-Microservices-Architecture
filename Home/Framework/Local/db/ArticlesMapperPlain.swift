//
//  ArticlesMapperPlain.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation
import HomeApplication

class ArticlesMapperPlain {
    
    func mapToPlain(articlesDb: [ArticleDb]) -> [ArticlePlain] {
        
        return articlesDb.map { articleDb in
            mapArticleDbToPlain(db: articleDb)
        }
    }
    
    func mapArticleDbToPlain(db: ArticleDb) -> ArticlePlain {
        return ArticlePlain(id: db.id, title: db.title, desc: db.desc, date: db.date, words: db.words, category: db.category, imageUrl: db.imageUrl, likes: db.likes, authorId: db.authorId)
    }
    
    func mapPlainToDb(plain: ArticlePlain) -> ArticleDb {
        return ArticleDb(id: plain.id, title: plain.title, desc: plain.desc, date: plain.date, words: plain.words, category: plain.category, imageUrl: plain.imageUrl, likes: plain.likes, authorId: plain.authorId)
    }
}
