//
//  CoordinatorFactoryImp.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

final class CoordinatorFactoryImp: CoordinatorFactory {
    func makeHomeCoordinator(router: Router) -> Coordinator & HomeCoordinatorOutput {
        
        let coordinator = HomeCoordinator(router: router, factory: ModuleFactoryImp(), coordinatorFactory: CoordinatorFactoryImp())
        return coordinator
    }
    
    func makeAddressCoordinator(router: Router) -> Coordinator & AddressCoordinatorOutput {

        let coordinator = AddressCoordinator(router: router, factory: ModuleFactoryImp(), coordinatorFactory: CoordinatorFactoryImp())
        return coordinator
    }
}
