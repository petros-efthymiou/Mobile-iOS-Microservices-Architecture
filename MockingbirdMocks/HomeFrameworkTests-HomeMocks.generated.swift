//
//  HomeFrameworkTests-HomeMocks.generated.swift
//  Home
//
//  Generated by Mockingbird v0.20.0.
//  DO NOT EDIT
//

@testable import Home
@testable import Mockingbird
import Alamofire
import Foundation
import HomeApplication
import HomeData
import HomePresentation
import Resolver
import RxSwift
import Swift
import SwiftUI

private let mkbGenericStaticMockContext = Mockingbird.GenericStaticMockContext()

// MARK: - Mocked ArticlesService
public final class ArticlesServiceMock: Home.ArticlesService, Mockingbird.Mock {
  typealias MockingbirdSupertype = Home.ArticlesService
  public static let mockingbirdContext = Mockingbird.Context()
  public let mockingbirdContext = Mockingbird.Context(["generator_version": "0.20.0", "module_name": "Home"])

  fileprivate init(sourceLocation: Mockingbird.SourceLocation) {
    self.mockingbirdContext.sourceLocation = sourceLocation
    ArticlesServiceMock.mockingbirdContext.sourceLocation = sourceLocation
  }

  // MARK: Mocked `fetchArticles`()
  public func `fetchArticles`() -> Observable<[Home.ArticleRaw]> {
    return self.mockingbirdContext.mocking.didInvoke(Mockingbird.SwiftInvocation(selectorName: "`fetchArticles`() -> Observable<[Home.ArticleRaw]>", selectorType: Mockingbird.SelectorType.method, arguments: [], returnType: Swift.ObjectIdentifier((Observable<[Home.ArticleRaw]>).self))) {
      self.mockingbirdContext.recordInvocation($0)
      let mkbImpl = self.mockingbirdContext.stubbing.implementation(for: $0)
      if let mkbImpl = mkbImpl as? () -> Observable<[Home.ArticleRaw]> { return mkbImpl() }
      for mkbTargetBox in self.mockingbirdContext.proxy.targets(for: $0) {
        switch mkbTargetBox.target {
        case .super:
          break
        case .object(let mkbObject):
          guard var mkbObject = mkbObject as? MockingbirdSupertype else { break }
          let mkbValue: Observable<[Home.ArticleRaw]> = mkbObject.`fetchArticles`()
          self.mockingbirdContext.proxy.updateTarget(&mkbObject, in: mkbTargetBox)
          return mkbValue
        }
      }
      if let mkbValue = self.mockingbirdContext.stubbing.defaultValueProvider.value.provideValue(for: (Observable<[Home.ArticleRaw]>).self) { return mkbValue }
      self.mockingbirdContext.stubbing.failTest(for: $0, at: self.mockingbirdContext.sourceLocation)
    }
  }

  public func `fetchArticles`() -> Mockingbird.Mockable<Mockingbird.FunctionDeclaration, () -> Observable<[Home.ArticleRaw]>, Observable<[Home.ArticleRaw]>> {
    return Mockingbird.Mockable<Mockingbird.FunctionDeclaration, () -> Observable<[Home.ArticleRaw]>, Observable<[Home.ArticleRaw]>>(context: self.mockingbirdContext, invocation: Mockingbird.SwiftInvocation(selectorName: "`fetchArticles`() -> Observable<[Home.ArticleRaw]>", selectorType: Mockingbird.SelectorType.method, arguments: [], returnType: Swift.ObjectIdentifier((Observable<[Home.ArticleRaw]>).self)))
  }

  // MARK: Mocked `updateArticle`(`articleRaw`: Home.ArticleRaw)
  public func `updateArticle`(`articleRaw`: Home.ArticleRaw) -> Void {
    return self.mockingbirdContext.mocking.didInvoke(Mockingbird.SwiftInvocation(selectorName: "`updateArticle`(`articleRaw`: Home.ArticleRaw) -> Void", selectorType: Mockingbird.SelectorType.method, arguments: [Mockingbird.ArgumentMatcher(`articleRaw`)], returnType: Swift.ObjectIdentifier((Void).self))) {
      self.mockingbirdContext.recordInvocation($0)
      let mkbImpl = self.mockingbirdContext.stubbing.implementation(for: $0)
      if let mkbImpl = mkbImpl as? (Home.ArticleRaw) -> Void { return mkbImpl(`articleRaw`) }
      if let mkbImpl = mkbImpl as? () -> Void { return mkbImpl() }
      for mkbTargetBox in self.mockingbirdContext.proxy.targets(for: $0) {
        switch mkbTargetBox.target {
        case .super:
          break
        case .object(let mkbObject):
          guard var mkbObject = mkbObject as? MockingbirdSupertype else { break }
          let mkbValue: Void = mkbObject.`updateArticle`(articleRaw: `articleRaw`)
          self.mockingbirdContext.proxy.updateTarget(&mkbObject, in: mkbTargetBox)
          return mkbValue
        }
      }
      if let mkbValue = self.mockingbirdContext.stubbing.defaultValueProvider.value.provideValue(for: (Void).self) { return mkbValue }
      self.mockingbirdContext.stubbing.failTest(for: $0, at: self.mockingbirdContext.sourceLocation)
    }
  }

  public func `updateArticle`(`articleRaw`: @autoclosure () -> Home.ArticleRaw) -> Mockingbird.Mockable<Mockingbird.FunctionDeclaration, (Home.ArticleRaw) -> Void, Void> {
    return Mockingbird.Mockable<Mockingbird.FunctionDeclaration, (Home.ArticleRaw) -> Void, Void>(context: self.mockingbirdContext, invocation: Mockingbird.SwiftInvocation(selectorName: "`updateArticle`(`articleRaw`: Home.ArticleRaw) -> Void", selectorType: Mockingbird.SelectorType.method, arguments: [Mockingbird.resolve(`articleRaw`)], returnType: Swift.ObjectIdentifier((Void).self)))
  }
}

/// Returns a concrete mock of `ArticlesService`.
public func mock(_ type: Home.ArticlesService.Protocol, file: StaticString = #file, line: UInt = #line) -> ArticlesServiceMock {
  return ArticlesServiceMock(sourceLocation: Mockingbird.SourceLocation(file, line))
}
