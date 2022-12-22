//
//  Routerable.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

import Foundation
import UIKit

public protocol Routerable: AnyObject {
    var view: Viewable! { get }

    func dismiss(animated: Bool)
    func dismiss(animated: Bool, completion: @escaping (() -> Void))
    func pop(animated: Bool)
}

public extension Routerable {
    func dismiss(animated: Bool) {
        view.dismiss(animated: animated)
    }
    func dismiss(animated: Bool, completion: @escaping (() -> Void)) {
        view.dismiss(animated: animated, _completion: completion)
    }

    func pop(animated: Bool) {
        view.pop(animated: animated)
    }
}
