//
//  Router.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

import Foundation
import UIKit

public protocol Router: Presentable {

    func present(_ module: Presentable?)
    func present(_ module: Presentable?, animated: Bool)
    func presentToFullScreen(_ module: Presentable?)

    func push(_ module: Presentable?)
    func push(_ module: Presentable?, hideBottomBar: Bool)
    func push(_ module: Presentable?, animated: Bool)
    func push(_ module: Presentable?, animated: Bool, completion: (() -> Void)?)
    func push(_ module: Presentable?, animated: Bool, hideBottomBar: Bool, completion: (() -> Void)?)

    func popModule()
    func popModule(animated: Bool)

    func dismissModule()
    func dismissModule(animated: Bool, completion: (() -> Void)?)
    func dismissPresentedViewController(animated: Bool, completion: (() -> Void)?)

    func setRootModule(_ module: Presentable?)
    func setRootModule(_ module: Presentable?, hideBar: Bool)

    func popToRootModule(animated: Bool)
    func popToModule(_ module: UIViewController.Type, animated: Bool)
    func getLastViewController() -> UIViewController?
}
