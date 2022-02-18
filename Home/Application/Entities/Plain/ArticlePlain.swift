//
//  ArticlePlain.swift
//  Home
//
//  Created by Petros Efthymiou on 25/01/2022.
//

import Foundation

public struct ArticlePlain: Equatable {
    public let id : String
    public let title: String
    public let desc: String
    public let date: String
    public let words: Int
    public let category: String
    public let imageUrl: String
    public let likes: Int
    public let authorId: String
    
    public init(id: String, title: String, desc: String, date: String, words:Int, category:String, imageUrl:String, likes: Int, authorId: String) {
        
        self.id = id
        self.title = title
        self.desc = desc
        self.date = date
        self.words = words
        self.category = category
        self.imageUrl = imageUrl
        self.likes = likes
        self.authorId = authorId
    }
}
