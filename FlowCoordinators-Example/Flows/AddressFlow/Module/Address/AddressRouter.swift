//
//  
//  AddressRouter.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//

import UIKit
final class AddressRouter {
    
    let navigationController: UINavigationController
    
    var viewController: AddressViewController
    
    init(view: AddressViewController) {
        self.viewController = view
        navigationController = UINavigationController(rootViewController: view)
    }
}

struct AddressRouterInput {
    private func view(entryEntity: AddressEntryEntity) -> AddressViewController {
        let view = AddressViewController()
        let interactor = AddressInteractor()
        
        let dependecies = AddressPresenterDependencies(
            interactor: interactor,
            router: AddressRouterOutput(view)
        )
        
        let presenter = AddressPresenter(view: view, entites: AddressEntities(entryEntity: entryEntity), dependencies: dependecies, coordinator: view)
        
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }
    
    func open(from: Viewable, entryEntity: AddressEntryEntity) -> AddressViewController {
        return self.view(entryEntity: entryEntity)
    }
}

final class AddressRouterOutput: Routerable {
    
    private(set) weak var view: Viewable!
    init(_ view: Viewable) {
        self.view = view
    }
    
    func navigateToSomething() { }
}
