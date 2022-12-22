//
//  
//  DetailContractor.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
protocol DetailInteractorOutputs: AnyObject {
}

protocol DetailViewInputs: AnyObject {
    func configure(entities: DetailEntities)
}

protocol DetailViewOutputs {
    func viewDidLoad()
}

protocol DetailCoordinatorView: BaseView {
    var onBack: (() -> Void)? { get set }
    var onMyAddressesFlow: (() -> Void)? { get set }
}
