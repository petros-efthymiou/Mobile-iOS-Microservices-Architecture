//
//  LikesLocalDataGateway.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation
import Resolver
import HomeData
import RxSwift
import HomeApplication

class LikesLocalDataGateway : LikesDataSourceLocal {
    
    private var likedArticlesIds: [String] = []
    private lazy var stream = BehaviorSubject<[String]>(value: likedArticlesIds)
        
    func findLikedArticles() -> Observable<[String]> {
        return stream.asObservable()
    }
    
    func saveLikedArticle(id: String) {
        likedArticlesIds.append(id)
        stream.onNext(likedArticlesIds)
    }
}
