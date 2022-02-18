//
//  HomeStateMapper.swift
//  Home
//
//  Created by Petros Efthymiou on 27/01/2022.
//

import Foundation
import Resolver
import HomeApplication

public class HomeStateMapper {
    
    @Injected var mapper: ArticlesPresentationMapper
    
    public init() {
        
    }
    
    func map(articles: [Article]) -> HomeState {
        if (articles.isEmpty) {
            return HomeState.empty
        } else {
            return HomeState.success(articles: mapper.map(articles: articles))
        }
    }
}
