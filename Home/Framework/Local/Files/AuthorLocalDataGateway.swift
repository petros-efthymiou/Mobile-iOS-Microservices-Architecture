//
//  AuthorLocalDataGateway.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation
import Resolver
import HomeData
import RxSwift
import HomeApplication

class AuthorLocalDataGateway: AuthorDataSourceLocal {
    
    @Injected var mapper: AuthorsMapperPlain
    
    func findAuthors() -> Observable<[AuthorPlain]> {
        return Observable.just(mapper.mapToPlain(authorsLocal: [
            AuthorLocal(
                id: "authorId1",
                firstName: "Petros",
                lastName: "Efthymiou",
                rating: 5,
                junkThatWeStoreLocally: "stored junk 1"
            ),
            AuthorLocal(
                id: "authorId2",
                firstName: "Nikos",
                lastName: "Voulgaris",
                rating: 5,
                junkThatWeStoreLocally: "stored junk 2"
            ),
            AuthorLocal(
                id: "authorId3",
                firstName: "Donny",
                lastName: "Wals",
                rating: 5,
                junkThatWeStoreLocally: "stored junk 3"
            ),
            AuthorLocal(
                id: "authorId4",
                firstName: "Christos",
                lastName: "Smpyrakos",
                rating: 5,
                junkThatWeStoreLocally: "stored junk 4"
            ),
        ]))
    }
}
