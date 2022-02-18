//
//  HomeState.swift
//  Home
//
//  Created by Petros Efthymiou on 27/01/2022.
//

import Foundation

public enum HomeState: Equatable {
    case success(articles: [ArticlePresentation])
    case empty
    case loading
    case error
}
