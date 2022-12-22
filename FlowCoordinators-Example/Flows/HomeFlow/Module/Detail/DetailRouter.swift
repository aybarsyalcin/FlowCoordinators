//
//  
//  DetailRouter.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
import UIKit

final class DetailRouter {
    
    let navigationController: UINavigationController
    
    var viewController: DetailViewController
    
    init(view: DetailViewController) {
        self.viewController = view
        navigationController = UINavigationController(rootViewController: view)
    }
    
}

struct DetailRouterInput {
    private func view(entryEntity: DetailEntryEntity) -> DetailViewController {
        let view = DetailViewController()
        let interactor = DetailInteractor()
        
        let dependecies = DetailPresenterDependencies(
            interactor: interactor,
            router: DetailRouterOutput(view)
        )
        
        let presenter = DetailPresenter(view: view, entites: DetailEntities(entryEntity: entryEntity), dependencies: dependecies)
        
        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }
    
    func open(from: Viewable, entryEntity: DetailEntryEntity) -> DetailViewController {
        return self.view(entryEntity: entryEntity)
    }
}

final class DetailRouterOutput: Routerable {
    
    private(set) weak var view: Viewable!
    init(_ view: Viewable) {
        self.view = view
    }
    
    func navigateToSomething() { }
}
