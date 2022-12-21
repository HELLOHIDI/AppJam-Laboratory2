//
//  WelcomeViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/21.
//

import Foundation
import UIKit

class WelcomeViewController: BaseViewController {
    
    //MARK: - Properties
    
    private lazy var welcomeView = WelcomeView()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = welcomeView
        welcomeView.welcomeButton.addTarget(self, action: #selector(dismissWelcomeView), for: .touchUpInside)
    }
    
    //MARK: - Custom Method
    
    func dataSend(email: String) {
        welcomeView.titleLabel.text = "\(email)님 \n 환영합니다"
    }
    
    //MARK: - Action Method
    
    @objc
    private func dismissWelcomeView() {
        self.dismiss(animated: true)
    }
}

