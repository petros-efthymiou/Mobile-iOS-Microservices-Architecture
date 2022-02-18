//
//  Fakes.swift
//  HomeApplicationTests
//
//  Created by Petros Efthymiou on 15/02/2022.
//

import Foundation
import HomeApplication

let article1 = Article(
    id: "id1",
    title: "title",
    desc: "desc",
    date: "01/01/2000",
    readTime: 1200 / 200,
    category: ArticleCategory.sports,
    imageUrl: "imageUrl",
    likes: 455,
    authorName: "Petros Efthymiou",
    canLike: false
)

let article2 = Article(
    id: "id2",
    title: "title2",
    desc: "desc2",
    date: "02/01/2000",
    readTime: 1300 / 200,
    category: ArticleCategory.music,
    imageUrl: "imageUrl2",
    likes: 555,
    authorName: "Nikos Voulgaris",
    canLike: true
)

let likedArticle1 = Article(
    id: "id1",
    title: "title",
    desc: "desc",
    date: "01/01/2000",
    readTime: 1200 / 200,
    category: ArticleCategory.sports,
    imageUrl: "imageUrl",
    likes: 456,
    authorName: "Petros Efthymiou",
    canLike: false
)

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

let likedArticlePlain1 = ArticlePlain(
    id: "id1",
    title: "title",
    desc: "desc",
    date: "01/01/2000",
    words: 1200,
    category: "sports",
    imageUrl: "imageUrl",
    likes: 456,
    authorId: "authorId1"
)

let articles = [article1, article2]

let articlesPlain = [articlePlain1, articlePlain2]

let authorPlain1 = AuthorPlain(id: "authorId1", fullName: "Petros Efthymiou", rating: 200)

let authorPlain2 = AuthorPlain(id: "authorId2", fullName: "Nikos Voulgaris", rating: 199)

let authorsPlain = [authorPlain1, authorPlain2]

let likedArticleIds = ["id1"]

let articlesData = ArticlesAuthorsLikes(articlesPlain: articlesPlain, authorsPlain: authorsPlain, likedArticlesIds: likedArticleIds)

let findArticlesData = ArticlesAuthorsLikes(articlesPlain: [articlePlain1], authorsPlain: authorsPlain, likedArticlesIds: likedArticleIds)
