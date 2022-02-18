//
//  ArticlePresentation.swift
//  Home
//
//  Created by Petros Efthymiou on 27/01/2022.
//

import Foundation

public struct ArticlePresentation: Identifiable, Equatable {
    public let id: String
    public let title: String
    public let desc: String
    public let date: String
    public let readTime: Int
    public let category: String
    public let imageUrl: String
    public let likes: Int
    public let authorName: String
    public let canLike: Bool
    public let likeActionAlpha: Double
}
