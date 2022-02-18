//
//  ArticlesMapperDb.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation

class ArticlesMapperDb {
    
    func mapRawsToDbs(articlesRaw: [ArticleRaw]) -> [ArticleDb] {
        return articlesRaw.map { articleRaw in
            mapToDb(raw: articleRaw)
        }
    }
    
    func mapToDb(raw: ArticleRaw) -> ArticleDb {
        return ArticleDb(
            id: raw.id,
            title: raw.title,
            desc: raw.desc,
            date: raw.date,
            words: raw.words,
            category: raw.category,
            imageUrl: raw.imageUrl,
            likes: raw.stars,
            authorId: raw.authorId)
    }
    
    func mapToRaw(db: ArticleDb) -> ArticleRaw {
        return ArticleRaw(
            id: db.id,
            title: db.title,
            desc: db.desc,
            date: db.date,
            words: db.words,
            category: db.category,
            imageUrl: db.imageUrl,
            stars: db.likes,
            authorId: db.authorId,
            otherJunkTheBackendIsSending: nil
        )
    }
}
