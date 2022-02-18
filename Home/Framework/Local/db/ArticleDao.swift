//
//  ArtclesDao.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation
import HomeData
import RxSwift
import HomeApplication

/// This class is resembling the communication with a local database. To simplify our example we have not included an actual DB but we are working with in-memory storage.
class ArticleDao {
    
    public lazy var stream = BehaviorSubject<[ArticleDb]>(value: storedArticlesDb)
    
    func nukeAndUpdate(articlesDb: [ArticleDb]) {
        storedArticlesDb = articlesDb
        stream.onNext(storedArticlesDb)
    }
    
    func findArticles()-> [ArticleDb] {
        return storedArticlesDb
    }
    
    func findArticle(id: String)-> ArticleDb {
        return storedArticlesDb.first { articleDb in
            articleDb.id == id
        }!
    }
    
    func updateArticle(db: ArticleDb) {
        if let row = storedArticlesDb.firstIndex(where: {$0.id == db.id}) {
            storedArticlesDb[row] = db
        }
        stream.onNext(storedArticlesDb)
    }
    
    private lazy var storedArticlesDb: [ArticleDb] = getPrestoredArticlesDb()
    
    private func getPrestoredArticlesDb() -> [ArticleDb] {
        return [
            ArticleDb(
                id: "articleId1",
                title: "Lorem Ipsum",
                desc: "dolor sit amet",
                date: "2021-12-25",
                words: 1500,
                category: "sports",
                imageUrl: "https://cdn.pixabay.com/photo/2016/05/16/21/07/football-1396740_1280.jpg",
                likes: 10,
                authorId: "authorId1"
            ),
            ArticleDb(
                id: "articleId2",
                title:  "Consectetur adipiscing elit",
                desc:   "sed do eiusmod tempor",
                date:   "2021-12-24",
                words:    2000,
                category: "music",
                imageUrl: "https://api.time.com/wp-content/uploads/2018/04/listening-to-music-headphones.jpg?w=824&quality=70",
                likes: 8,
                authorId: "authorId2"
            )
        ]
    }
}
