//
//  
//  HomeViewController.swift
//  FlowCoordinators-Example
//
//  Created by aybars yalcin on 12.12.2022.
//
//

import UIKit
import SnapKit
final class HomeViewController: UIViewController, HomeCoordinatorView {
        
    // Coordinator
    var onBack: (() -> Void)?
    var onDetailPage: (() -> Void)?
    var onMyAddressesFlow: (() -> Void)?

    var presenter: HomePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        self.title = "Home"
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .default
    }
}

extension HomeViewController: Viewable { }

extension HomeViewController: HomeViewInputs {
    func configure(entities: HomeEntities) {
    }
    
    func indicatorView(animate: Bool) {
    }
    
    func setupUI() {
        self.view.backgroundColor = .white

        let buttonDetail = UIButton()
        buttonDetail.setTitle("Open Detail", for: .normal)
        buttonDetail.setTitleColor(.white, for: .normal)
        buttonDetail.backgroundColor = .red
        buttonDetail.addTarget(self, action: #selector(buttonDetailAction), for: .touchUpInside)
        
        self.view.addSubview(buttonDetail)
        
        buttonDetail.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.width.equalTo(100)
        }
        
        
        let buttonMyAddresses = UIButton()
        buttonMyAddresses.setTitle("My Addresses", for: .normal)
        buttonMyAddresses.setTitleColor(.white, for: .normal)
        buttonMyAddresses.backgroundColor = .red
        buttonMyAddresses.addTarget(self, action: #selector(buttonMyAddressesAction), for: .touchUpInside)
        
        self.view.addSubview(buttonMyAddresses)

        buttonMyAddresses.snp.makeConstraints {
            $0.top.equalTo(buttonDetail.snp.bottom).offset(15)
            $0.centerX.equalToSuperview()
            $0.height.equalTo(100)
            $0.width.equalTo(200)

        }
        
        self.view.addSubview(buttonMyAddresses)
    }
    
    @objc func buttonDetailAction(sender: UIButton!) {
        onDetailPage?()
    }
    
    @objc func buttonMyAddressesAction(sender: UIButton!) {
        onMyAddressesFlow?()
    }
}
