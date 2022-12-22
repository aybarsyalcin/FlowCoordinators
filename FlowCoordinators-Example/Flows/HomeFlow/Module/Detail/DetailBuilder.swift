//
//  
//  DetailBuilder.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import Foundation
import UIKit
public final class DetailBuilder {    
    static func make() -> DetailViewController {
        let viewController = DetailRouterInput().open(from: DetailViewController(), entryEntity: DetailEntryEntity())
        return viewController
    }
}
