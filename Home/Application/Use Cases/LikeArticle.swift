//
//  LikeArticle.swift
//  Home
//
//  Created by Petros Efthymiou on 26/01/2022.
//

import Foundation
import Resolver
import RxSwift

public class LikeArticle {
    
    @Injected var source: LikeArticleSource
    @Injected var mapper: ArticlesMapper
    @Injected var disposeBag: DisposeBag
    
    public init() {
        
    }
    
    public func likeArticle(id: String) {
        do {
            source.findArticle(id: id).subscribe { event in
                
                if let articlesAuthorsLikes = event.element {
                    let articlePlain = articlesAuthorsLikes.articlesPlain.first!
                    
                    let article = self.mapper.mapArticle(articlePlain: articlePlain,
                                                         authorsPlain: articlesAuthorsLikes.authorsPlain,
                                                         likedArticlesIds: articlesAuthorsLikes.likedArticlesIds)
                    
                    let updatedArticle = article.likeArticle()
                    
                    if(updatedArticle != nil) {
                        self.source.updateArticle(
                            articlePlain: self.mapper.mapToPlain(
                                domain: updatedArticle!,
                                authorId: articlePlain.authorId,
                                words: articlePlain.words
                            )
                        )
                    }
                }
            }.disposed(by: disposeBag)
        }
    }
}
