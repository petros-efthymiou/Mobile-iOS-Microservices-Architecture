//
//  ArticleRaw.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation

struct ArticleRaw: Codable, Equatable {
    let id: String
    let title: String
    let desc: String
    let date: String
    let words: Int
    let category: String
    let imageUrl: String
    let stars: Int
    let authorId: String
    let otherJunkTheBackendIsSending: [String]?
}
