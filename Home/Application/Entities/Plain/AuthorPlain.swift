//
//  AuthorPlain.swift
//  Home
//
//  Created by Petros Efthymiou on 25/01/2022.
//

import Foundation

public struct AuthorPlain: Equatable {
    public let id: String
    public let fullName: String
    public let rating: Int
    
    public init(id: String, fullName: String, rating: Int) {
        self.id = id
        self.fullName = fullName
        self.rating = rating
    }
}
