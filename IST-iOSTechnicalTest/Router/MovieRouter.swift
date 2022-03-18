//
//  MovieRouter.swift
//  IST-iOSTechnicalTest
//
//  Created by Vincent on 18/03/22.
//

import Foundation
import UIKit

// object
// entry point

typealias EntryPoint = AnyView & UIViewController

protocol AnyRouter {
    var entry: EntryPoint? { get }
    static func start() -> AnyRouter
}

class MovieRouter: AnyRouter{
    var entry: EntryPoint?
    
    static func start() -> AnyRouter {
        let router = MovieRouter()
        
        var view: AnyView = ViewController()
        var presenter: AnyPresenter = MoviePresenter()
        var interactor: AnyInteractor = MovieInteractor()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.router = router
        presenter.view = view
        presenter.interactor = interactor
        
        router.entry = view as? EntryPoint
        
        return router
    }
}
