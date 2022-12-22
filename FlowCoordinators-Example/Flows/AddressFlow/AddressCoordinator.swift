//
//  
//  AddressCoordinator.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//
import UIKit
final class AddressCoordinator: Coordinator, AddressCoordinatorOutput {
    var finishAddressCoordinatorFlow: (() -> Void)?
    
    private let factory: AddressModuleFactory
    private let coordinatorFactory: CoordinatorFactory
    private let router: Router
    
    init(router: Router,
         factory: AddressModuleFactory,
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
        let addressOutput = factory.makeAddressCoordinatorOutput()
        
        addressOutput.onBack = { [weak self] in
            guard let self = self else { return }
            self.finishAddressCoordinatorFlow?()
        }
        
        addressOutput.onRootPage = { [weak self] in
            guard let self = self else { return }
            self.finishAddressCoordinatorFlow?()
            self.router.popToRootModule(animated: true)
        }
        
        router.push(addressOutput)
    }
}
