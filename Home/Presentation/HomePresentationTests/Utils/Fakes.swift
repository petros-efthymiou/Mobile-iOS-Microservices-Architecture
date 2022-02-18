//
//  Fakes.swift
//  HomePresentationTests
//
//  Created by Petros Efthymiou on 16/02/2022.
//

import Foundation
import HomeApplication
@testable import HomePresentation

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
    date: "01/01/2000",
    readTime: 1300 / 200,
    category: ArticleCategory.music,
    imageUrl: "imageUrl2",
    likes: 555,
    authorName: "Nikos Voulgaris",
    canLike: true
)

let articles = [article1, article2]

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
    date: "01/01/2000",
    readTime: 1300 / 200,
    category: "Music",
    imageUrl: "imageUrl2",
    likes: 555,
    authorName: "Nikos Voulgaris",
    canLike: true,
    likeActionAlpha: 1
)

let articlesPresentation = [articlePresentation1, articlePresentation2]

