//
//  Viewable.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//

import Foundation
import UIKit
public protocol Viewable: AnyObject {
    func push(_ vc: UIViewController, animated: Bool)
    func present(_ vc: UIViewController, animated: Bool)
    func pop(animated: Bool)
//    func pop(to controller: AnyClass, animated: Bool)
    func dismiss(animated: Bool)
    func dismiss(animated: Bool, _completion:  @escaping (() -> Void))
//    func setRootViewController(_ vc: UIViewController, animated: Bool)
}

public extension Viewable where Self: UIViewController {

//    func setRootViewController(_ vc: UIViewController, animated: Bool) {
//        self.navigationController?.setRootViewController(vc, animated: true)
//    }

    func push(_ vc: UIViewController, animated: Bool) {
        self.navigationController?.pushViewController(vc, animated: animated)
    }

    func present(_ vc: UIViewController, animated: Bool) {
        self.present(vc, animated: animated, completion: nil)
    }

    func pop(animated: Bool) {
        self.navigationController?.popViewController(animated: animated)
    }

//    func pop(to controller: AnyClass, animated: Bool) {
//        self.navigationController?.popToViewController(ofClass: controller)
//    }

    func dismiss(animated: Bool) {
        self.dismiss(animated: animated, completion: nil)
    }

    func dismiss(animated: Bool, _completion: @escaping (() -> Void)) {
        self.dismiss(animated: animated, completion: _completion)
    }

    var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
    var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return .portrait
    }
}
