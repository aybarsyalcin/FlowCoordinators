//
//  
//  AddressBuilder.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//

import UIKit
public final class AddressBuilder {
    static func make() -> AddressViewController {
        let viewController = AddressRouterInput().open(from: AddressViewController(), entryEntity: AddressEntryEntity())
        return viewController
    }
}
