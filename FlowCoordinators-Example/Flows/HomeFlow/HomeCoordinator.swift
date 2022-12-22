//
//  
//  HomeCoordinator.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
import UIKit
final class HomeCoordinator: Coordinator, HomeCoordinatorOutput {
    var finishHomeCoordinatorFlow: (() -> Void)?
    var onAddressFlow: (() -> Void)?
    
    private let factory: HomeModuleFactory
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router,
         factory: HomeModuleFactory,
         coordinatorFactory: CoordinatorFactory) {
        
        self.router = router
        self.factory = factory
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        showFlow()
    }
    
    // MARK: - Run current flow's controllers
    
    private func showFlow() {
        let homeOutput = factory.makeHomeCoordinatorOutput()
        
        homeOutput.onBack = { [weak self] in
            guard let self = self else { return }
            self.finishHomeCoordinatorFlow?()
            // Nothing beacuse this is root view.
        }
        
        homeOutput.onDetailPage = { [weak self] in
            guard let self = self else { return }
            self.showDetail()
        }
        
        homeOutput.onMyAddressesFlow = { [weak self] in
            guard let self = self else { return }
            self.onAddressFlow?()
        }
        
        router.setRootModule(homeOutput)
    }
    
    private func showDetail() {
        let detailOutput = factory.makeDetailCoordinatorOutput()
        
        detailOutput.onBack = { [weak self] in
            guard let self = self else { return }
            self.router.popModule()
        }
        
        detailOutput.onMyAddressesFlow = { [weak self] in
            guard let self = self else { return }
            self.onAddressFlow?()
        }
        
        router.push(detailOutput)
    }
}
