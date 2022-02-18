//
//  Fakes.swift
//  HomeFrameworkTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation
@testable import HomePresentation
@testable import Home
@testable import HomeApplication

let articlePresentation1 = ArticlePresentation(
    id: "id1",
    title: "title",
    desc: "desc",
    date: "01/01/2000",
    readTime: 1200 / 200,
    category: "Sports",
    imageUrl: "imageUrl",
    likes: 455,
    authorName: "Petros Efthymiou",
    canLike: false,
    likeActionAlpha: 0.2
)

let articlePresentation2 = ArticlePresentation(
    id: "id2",
    title: "title2",
    desc: "desc2",
    date: "02/01/2000",
    readTime: 1300 / 200,
    category: "Music",
    imageUrl: "imageUrl2",
    likes: 555,
    authorName: "Nikos Voulgaris",
    canLike: true,
    likeActionAlpha: 1
)

let articlesPresentation = [articlePresentation1, articlePresentation2]

let articleRaw1 = ArticleRaw(id: "id1", title: "title", desc: "desc", date: "01/01/2000", words: 1200, category: "sports", imageUrl: "imageUrl", stars: 455, authorId: "authorId1", otherJunkTheBackendIsSending: nil)

let articleRaw2 = ArticleRaw(id: "id2", title: "title2", desc: "desc2", date: "02/01/2000", words: 1300, category: "music", imageUrl: "imageUrl2", stars: 555, authorId: "authorId2", otherJunkTheBackendIsSending: ["junk2"])

let articlesRaw = [articleRaw1, articleRaw2]

let articleDb1 = ArticleDb(id: "id1", title: "title", desc: "desc", date: "01/01/2000", words: 1200, category: "sports", imageUrl: "imageUrl", likes: 455, authorId: "authorId1")

let articleDb2 = ArticleDb(id: "id2", title: "title2", desc: "desc2", date: "02/01/2000", words: 1300, category: "music", imageUrl: "imageUrl2", likes: 555, authorId: "authorId2")

let articlesDb = [articleDb1, articleDb2]

let articlePlain1 = ArticlePlain(
    id: "id1",
    title: "title",
    desc: "desc",
    date: "01/01/2000",
    words: 1200,
    category: "sports",
    imageUrl: "imageUrl",
    likes: 455,
    authorId: "authorId1"
)

let articlePlain2 = ArticlePlain(
    id: "id2",
    title: "title2",
    desc: "desc2",
    date: "02/01/2000",
    words: 1300,
    category: "music",
    imageUrl: "imageUrl2",
    likes: 555,
    authorId: "authorId2"
)

let articlesPlain = [articlePlain1, articlePlain2]

let authorPlain1 = AuthorPlain(id: "authorId1", fullName: "Petros Efthymiou", rating: 5)

let authorPlain2 = AuthorPlain(id: "authorId2", fullName: "Nikos Voulgaris", rating: 5)

let authorPlain3 = AuthorPlain(id: "authorId3", fullName: "Donny Wals", rating: 5)

let authorPlain4 = AuthorPlain(id: "authorId4", fullName: "Christos Smpyrakos", rating: 5)

let authorsPlain = [authorPlain1, authorPlain2, authorPlain3, authorPlain4]

let authorLocal1 = AuthorLocal(id: "authorId1", firstName: "Petros", lastName: "Efthymiou", rating: 5, junkThatWeStoreLocally: "junk")

let authorLocal2 = AuthorLocal(id: "authorId2", firstName: "Nikos", lastName:"Voulgaris", rating: 5, junkThatWeStoreLocally: "junk2")

let authorLocal3 = AuthorLocal(id: "authorId3", firstName: "Donny", lastName: "Wals", rating: 5, junkThatWeStoreLocally: "junk")

let authorLocal4 = AuthorLocal(id: "authorId4", firstName: "Christos", lastName:"Smpyrakos", rating: 5, junkThatWeStoreLocally: "junk2")

let authorsLocal = [authorLocal1, authorLocal2, authorLocal3, authorLocal4]

let localArticleDb1 = ArticleDb(
    id: "articleId1",
    title: "Updated title",
    desc: "dolor sit amet",
    date: "2021-12-25",
    words: 1500,
    category: "sports",
    imageUrl: "https://cdn.pixabay.com/photo/2016/05/16/21/07/football-1396740_1280.jpg",
    likes: 10,
    authorId: "authorId1"
)

let localUpdatedArticlePlain1 = ArticlePlain(
    id: "articleId1",
    title: "Updated title",
    desc: "dolor sit amet",
    date: "2021-12-25",
    words: 1500,
    category: "sports",
    imageUrl: "https://cdn.pixabay.com/photo/2016/05/16/21/07/football-1396740_1280.jpg",
    likes: 10,
    authorId: "authorId1"
)

let localArticlePlain1 = ArticlePlain(
    id: "FFFFFFFFFF",
    title: "Lorem Ipsum",
    desc: "dolor sit amet",
    date: "2021-12-25",
    words: 1500,
    category: "sports",
    imageUrl: "https://cdn.pixabay.com/photo/2016/05/16/21/07/football-1396740_1280.jpg",
    likes: 10,
    authorId: "authorId1"
)

let localArticlePlain2 =  ArticlePlain(
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

let localArticlesPlain = [localArticlePlain1, localArticlePlain2]

