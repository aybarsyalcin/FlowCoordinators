//
//  
//  HomeRouter.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
import UIKit
final class HomeRouter {

    let navigationController: UINavigationController

    var viewController: HomeViewController

    init(view: HomeViewController) {
        self.viewController = view
        navigationController = UINavigationController(rootViewController: view)
    }
}

struct HomeRouterInput {
    private func view(entryEntity: HomeEntryEntity) -> HomeViewController {
        let view = HomeViewController()
        let interactor = HomeInteractor()

        let dependecies = HomePresenterDependencies(
            interactor: interactor,
            router: HomeRouterOutput(view)
        )

        let presenter = HomePresenter(view: view, entites: HomeEntities(entryEntity: entryEntity), dependencies: dependecies, coordinator: view)

        view.presenter = presenter
        interactor.presenter = presenter
        return view
    }

    func open(from: Viewable, entryEntity: HomeEntryEntity) -> HomeViewController {
        return self.view(entryEntity: entryEntity)
    }
}

final class HomeRouterOutput: Routerable {

    private(set) weak var view: Viewable!
    init(_ view: Viewable) {
        self.view = view
    }

    func navigateToSomething() { }
}
