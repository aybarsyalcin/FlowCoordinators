//
//  
//  AddressPresenter.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//

import Foundation
import UIKit
typealias AddressPresenterDependencies = (
    interactor: AddressInteractor,
    router: AddressRouterOutput
)

class AddressPresenter {
    
    weak var view: AddressViewInputs?
    internal var entites: AddressEntities
    let dependencies: AddressPresenterDependencies
    weak var coordinator: AddressCoordinatorView?
    
    init(view: AddressViewInputs, 
         entites: AddressEntities, 
         dependencies: AddressPresenterDependencies,
         coordinator: AddressCoordinatorView) {
        self.view = view
        self.entites = entites
        self.dependencies = dependencies
        self.coordinator = coordinator
    }
}

extension AddressPresenter: AddressViewOutputs {
    func viewDidLoad() {
        view?.configure(entities: AddressEntities(entryEntity: AddressEntryEntity()))
    }
}

extension AddressPresenter: AddressInteractorOutputs {}
