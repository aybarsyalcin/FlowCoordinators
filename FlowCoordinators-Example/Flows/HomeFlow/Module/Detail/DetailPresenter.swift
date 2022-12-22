//
//  
//  DetailPresenter.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
import UIKit

typealias DetailPresenterDependencies = (
    interactor: DetailInteractor,
    router: DetailRouterOutput
)

class DetailPresenter {
    
    weak var view: DetailViewInputs?
    internal var entites: DetailEntities
    let dependencies: DetailPresenterDependencies
    
    init(view: DetailViewInputs, entites: DetailEntities, dependencies: DetailPresenterDependencies) {
        self.view = view
        self.entites = entites
        self.dependencies = dependencies
    }
}

extension DetailPresenter: DetailViewOutputs {
    func viewDidLoad() {
    }
}

extension DetailPresenter: DetailInteractorOutputs {
}
