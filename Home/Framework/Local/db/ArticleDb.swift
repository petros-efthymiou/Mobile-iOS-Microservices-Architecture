//
//  ArticleDb.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation

struct ArticleDb: Equatable {
    let id: String
    let title: String
    let desc: String
    let date: String
    let words: Int
    let category: String
    let imageUrl: String
    let likes: Int
    let authorId: String
}
