//
//  Presentable.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

import UIKit

public protocol Presentable: AnyObject {

    func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {

    public func toPresent() -> UIViewController? {
        return self
    }
}
