//
//  Coordinator.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

import Foundation
class Coordinator: BaseCoordinator {
    
    var childCoordinators: [BaseCoordinator] = []
    
    func start() {
        start()
    }
    
    // add only unique object
    func addDependency(_ coordinator: BaseCoordinator) {
        guard !childCoordinators.contains(where: { $0 === coordinator }) else { return }
        childCoordinators.append(coordinator)
        print("current coordinators count : \(childCoordinators.count)")
    }
    
    func removeDependency(_ coordinator: BaseCoordinator?) {
        guard
            childCoordinators.isEmpty == false,
            let coordinator = coordinator
        else { return }
        
        // Clear child-coordinators recursively
        if let coordinator = coordinator as? Coordinator, !coordinator.childCoordinators.isEmpty {
            coordinator.childCoordinators
                .filter({ $0 !== coordinator })
                .forEach({ coordinator.removeDependency($0) })
        }
        for (index, element) in childCoordinators.enumerated() where element === coordinator {
            childCoordinators.remove(at: index)
            break
        }
        print("current coordinators count : \(childCoordinators.count)")
    }
}
