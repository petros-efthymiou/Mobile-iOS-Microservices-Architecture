//
//  AuthorsMapperPlain.swift
//  Home
//
//  Created by Petros Efthymiou on 02/02/2022.
//

import Foundation
import HomeApplication

class AuthorsMapperPlain {
    
    func mapToPlain(authorsLocal: [AuthorLocal]) -> [AuthorPlain] {
        
        return authorsLocal.map { authorLocal in
            mapAuthorLocalToPlain(local: authorLocal)
        }
    }
    
    private func mapAuthorLocalToPlain(local: AuthorLocal) -> AuthorPlain {
        return AuthorPlain(
            id: local.id,
            fullName: mapFullName(firstName: local.firstName, lastName: local.lastName),
            rating: local.rating
        )
    }
    
    private func mapFullName(firstName: String, lastName: String) -> String {
        return "\(firstName) \(lastName)"
    }
}
