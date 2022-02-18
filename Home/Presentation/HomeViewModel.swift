//
//  HomeViewModel.swift
//  HomePresentation
//
//  Created by Petros Efthymiou on 27/01/2022.
//

import Foundation
import HomeApplication
import RxSwift
import Resolver

public class HomeViewModel : ObservableObject {
    
    @Injected var stateMapper: HomeStateMapper
    @Injected var getArticlesUseCase: GetArticles
    @Injected var likeArticleUseCase: LikeArticle
    
    public init() {
        
    }
    
    @Published public var state: HomeState = HomeState.loading
    
    let disposeBag = DisposeBag()
    
    public func handleIntent(intent: HomeIntent) {
        switch intent {
        case HomeIntent.ViewArticles:
            viewArticles()
        case HomeIntent.LikeArticle(let id):
            likeArticleUseCase.likeArticle(id: id)
        }
    }
    
    private func viewArticles() {
        getArticlesUseCase.articles()
            .subscribe { event in
            if (event.error != nil) {
                self.state = HomeState.error
            } else if (event.element != nil){
                self.state = self.stateMapper.map(articles: event.element!)
            }
        }.disposed(by: disposeBag)
    }
}
