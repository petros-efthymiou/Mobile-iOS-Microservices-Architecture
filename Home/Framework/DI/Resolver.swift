//
//  Resolver.swift
//  Home
//
//  Created by Petros Efthymiou on 03/02/2022.
//

import Resolver
import HomeApplication
import HomePresentation
import HomeData
import RxSwift

extension Resolver: ResolverRegistering {
    
  public static func registerAllServices() {
    
      register { GetArticles() }
      register { ArticlesMapperPlain() }
      register { LikeArticle() }
      register { HomeStateMapper() }
      register { GetArticlesSourceCombined() }.implements(GetArticlesSource.self)
      register { ArticlesRemoteDataGateway() }.implements(ArticleDataSourceRemote.self)
      register { ArticlesLocalDataGateway() }.implements(ArticleDataSourceLocal.self)
      register { AuthorsMapperPlain() }
      register { AuthorLocalDataGateway() }.implements(AuthorDataSourceLocal.self)
      register { HomeViewModel() }
      register { ArticlesServiceImpl() }.implements(ArticlesService.self)
      register { ArticlesMapperDb() }
      register { LikesLocalDataGateway() }.implements(LikesDataSourceLocal.self)
      register { LikeArticleSourceCombined() }.implements(LikeArticleSource.self)
      register { ArticleDao() }
      register { ArticlesAuthorsLikesMapper() }
      register { ArticlesMapper() }
      register { ArticlesPresentationMapper() }
      register { DisposeBag() }
  }
}


