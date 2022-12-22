//
//  ModuleFactoryImp.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

final class ModuleFactoryImp { }

extension ModuleFactoryImp: HomeModuleFactory {
    func makeDetailCoordinatorOutput() -> DetailCoordinatorView {
        return DetailBuilder.make()
    }
    
    func makeHomeCoordinatorOutput() -> HomeCoordinatorView {
        return HomeBuilder.make()
    }
}

extension ModuleFactoryImp: AddressModuleFactory {
    func makeAddressCoordinatorOutput() -> AddressCoordinatorView {
        return AddressBuilder.make()
    }
}
