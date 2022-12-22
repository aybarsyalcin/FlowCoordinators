//
//  
//  HomePresenter.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
import UIKit
typealias HomePresenterDependencies = (
    interactor: HomeInteractor,
    router: HomeRouterOutput
)

class HomePresenter {

    weak var view: HomeViewInputs?
    internal var entites: HomeEntities
    let dependencies: HomePresenterDependencies
    weak var coordinator: HomeCoordinatorView?

    init(view: HomeViewInputs, 
    entites: HomeEntities, 
    dependencies: HomePresenterDependencies,
    coordinator: HomeCoordinatorView) {
        self.view = view
        self.entites = entites
        self.dependencies = dependencies
        self.coordinator = coordinator
    }
}

extension HomePresenter: HomeViewOutputs {
    func viewDidLoad() {
    }
}

extension HomePresenter: HomeInteractorOutputs {
}
