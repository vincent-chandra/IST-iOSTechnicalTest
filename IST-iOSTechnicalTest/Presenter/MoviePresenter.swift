//
//  MoviePresenter.swift
//  IST-iOSTechnicalTest
//
//  Created by Vincent on 18/03/22.
//

import Foundation

// object
// protocol
// reference to interactor, router, and view

protocol AnyPresenter{
    var router: AnyRouter? { get set }
    var interactor: AnyInteractor? { get set }
    var view: AnyView? { get set }
}

class MoviePresenter: AnyPresenter{
    var router: AnyRouter?
    var interactor: AnyInteractor?
    var view: AnyView?
}


