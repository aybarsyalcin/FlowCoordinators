//
//  
//  AddressContractor.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//

import Foundation
protocol AddressInteractorOutputs: AnyObject {}

protocol AddressViewInputs: AnyObject {
    func configure(entities: AddressEntities)
}

protocol AddressViewOutputs {
    func viewDidLoad()
}

protocol AddressCoordinatorView: BaseView {
    var onBack: (() -> Void)? { get set }
    var onRootPage: (() -> Void)? { get set }
}
