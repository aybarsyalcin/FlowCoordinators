//
//  
//  HomeContractor.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
protocol HomeInteractorOutputs: AnyObject {
}

protocol HomeViewInputs: AnyObject {
    func configure(entities: HomeEntities)
}

protocol HomeViewOutputs {
    func viewDidLoad()
}

protocol HomeCoordinatorView: BaseView {
    var onBack: (() -> Void)? { get set }
    var onDetailPage: (() -> Void)? { get set }
    var onMyAddressesFlow: (() -> Void)? { get set }
}
