//
//  
//  HomeCoordinatorOutput.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
protocol HomeCoordinatorOutput: AnyObject {
    var finishHomeCoordinatorFlow: (() -> Void)? { get set }
    var onAddressFlow: (() -> Void)? { get set }
}
