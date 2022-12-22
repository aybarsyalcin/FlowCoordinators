//
//  
//  DetailViewController.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import UIKit

final class DetailViewController: UIViewController, DetailCoordinatorView {

    // Coordinator
    var onBack: (() -> Void)?
    var onMyAddressesFlow: (() -> Void)?
    
    var presenter: DetailPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Detail"
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

extension DetailViewController: Viewable { }

extension DetailViewController: DetailViewInputs {
    func configure(entities: DetailEntities) { }
    
    func setupUI() {
        self.view.backgroundColor = .white

        let buttonMyAddresses = UIButton()
        buttonMyAddresses.setTitle("My Addresses", for: .normal)
        buttonMyAddresses.setTitleColor(.white, for: .normal)
        buttonMyAddresses.backgroundColor = .red
        buttonMyAddresses.addTarget(self, action: #selector(buttonMyAddressesAction), for: .touchUpInside)
        
        self.view.addSubview(buttonMyAddresses)

        buttonMyAddresses.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.equalTo(100)
            $0.width.equalTo(200)

        }
        
        self.view.addSubview(buttonMyAddresses)
    }
    
    @objc func buttonMyAddressesAction(sender: UIButton!) {
        onMyAddressesFlow?()
    }
}
