//
//  
//  AddressViewController.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 19.12.2022.
//
//

import UIKit
import SnapKit
final class AddressViewController: UIViewController, AddressCoordinatorView {
    
    // Coordinator
    var onBack: (() -> Void)?
    var onRootPage: (() -> Void)?
    
    var presenter: AddressPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Address"
        presenter?.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        if self.isMovingFromParent {
            onBack?()
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}

extension AddressViewController: Viewable { }

extension AddressViewController: AddressViewInputs {
    
    func configure(entities: AddressEntities) {
    }
    
    func setupUI() {
        self.view.backgroundColor = .white
        
        let buttonDetail = UIButton()
        buttonDetail.setTitle("Root Page", for: .normal)
        buttonDetail.setTitleColor(.white, for: .normal)
        buttonDetail.backgroundColor = .red
        buttonDetail.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        
        self.view.addSubview(buttonDetail)
        
        buttonDetail.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.width.equalTo(100)
        }
    }
    
    @objc func buttonAction(sender: UIButton!) {
        onRootPage?()
    }
}
