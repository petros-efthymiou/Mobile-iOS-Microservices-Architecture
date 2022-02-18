//
//  HomeView.swift
//  Home
//
//  Created by Petros Efthymiou on 03/02/2022.
//

import Foundation
import SwiftUI
import Resolver
import HomePresentation

public struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel = Resolver.resolve()
    
    public init() {
        viewModel.handleIntent(intent: HomeIntent.ViewArticles)
    }
    
    public var body: some View {
        
        switch viewModel.state {
        case HomeState.success(let articles):
            return AnyView(ArticlesListView(articles: articles, likeArticle: { _id in
                viewModel.handleIntent(intent: HomeIntent.LikeArticle(id: _id))
            }))
        case HomeState.loading:
            return AnyView(LoadingState())
        case HomeState.empty:
            return AnyView(EmptyState())
        case HomeState.error:
            return AnyView(ErrorState())
        }
    }
}
