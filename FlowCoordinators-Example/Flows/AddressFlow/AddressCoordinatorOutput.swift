//
//  
//  AddressCoordinatorOutput.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//

import Foundation
protocol AddressCoordinatorOutput: AnyObject {
    var finishAddressCoordinatorFlow: (() -> Void)? { get set }
}
