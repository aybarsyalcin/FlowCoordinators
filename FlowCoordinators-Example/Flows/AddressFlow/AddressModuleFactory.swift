//
//  
//  AddressModuleFactory.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//

import Foundation
protocol AddressModuleFactory {
    func makeAddressCoordinatorOutput() -> AddressCoordinatorView
}
