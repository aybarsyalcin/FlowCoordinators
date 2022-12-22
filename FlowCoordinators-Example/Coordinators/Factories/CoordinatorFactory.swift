//
//  CoordinatorFactory.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

protocol CoordinatorFactory {
    func makeHomeCoordinator(router: Router) -> Coordinator & HomeCoordinatorOutput
    func makeAddressCoordinator(router: Router) -> Coordinator & AddressCoordinatorOutput
}
