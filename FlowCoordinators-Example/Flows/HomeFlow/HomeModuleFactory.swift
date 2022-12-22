//
//  
//  HomeModuleFactory.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
protocol HomeModuleFactory {
    func makeHomeCoordinatorOutput() -> HomeCoordinatorView
    func makeDetailCoordinatorOutput() -> DetailCoordinatorView
}
