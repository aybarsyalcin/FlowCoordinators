//
//  ApplicationCoordinator.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

import Foundation

final class ApplicationCoordinator: Coordinator {
    
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router, coordinatorFactory: CoordinatorFactory) {
        self.router = router
        self.coordinatorFactory = coordinatorFactory
    }
    
    override func start() {
        runMainFlow()
    }
    
    private func runMainFlow() {
        let (coordinator) = coordinatorFactory.makeHomeCoordinator(router: router)
        
        coordinator.finishHomeCoordinatorFlow = {
            // Nothing beacuse this is root view.
        }
        
        coordinator.onAddressFlow = {
            self.runAddressFlow()
        }
                
        addDependency(coordinator)
        coordinator.start()
    }
    
    private func runAddressFlow() {
        let (coordinator) = coordinatorFactory.makeAddressCoordinator(router: router)
        
        coordinator.finishAddressCoordinatorFlow = {
            self.removeDependency(coordinator)
        }
        
        addDependency(coordinator)
        coordinator.start()
    }
}
