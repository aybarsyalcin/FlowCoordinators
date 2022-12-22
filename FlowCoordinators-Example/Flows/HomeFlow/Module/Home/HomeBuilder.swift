//
//  
//  HomeBuilder.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
import UIKit
public final class HomeBuilder {
    static func make() -> HomeViewController {
        let viewController = HomeRouterInput().open(from: HomeViewController(), entryEntity: HomeEntryEntity())
        return viewController
    }
}