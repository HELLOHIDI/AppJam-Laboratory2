//
//  LoginViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/20.
//

import Foundation
import UIKit

class LoginViewController: BaseViewController {
    
    //MARK: - Properties
    
    private lazy var loginView = LoginView()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.loginButton.addTarget(self, action: #selector(gotoWelcomeView), for: .touchUpInside)
    }
    
    override func loadView() {
        self.view = loginView
    }
    
    func presentToWelcomeView() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
        self.present(welcomeViewController, animated: true)
    }
    
    @objc
    private func gotoWelcomeView() {
        presentToWelcomeView()
    }
}
