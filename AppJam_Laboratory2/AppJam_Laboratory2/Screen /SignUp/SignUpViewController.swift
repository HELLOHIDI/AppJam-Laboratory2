//
//  SignUpViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/21.
//

import Foundation
import UIKit

class SignUpViewController: BaseViewController {
    
    //MARK: - Properties
    
    private lazy var signUpView = SignUpView()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signUpView.signUpButton.addTarget(self, action: #selector(gotoWelcomeView), for: .touchUpInside)
    }
    
    override func loadView() {
        self.view = signUpView
    }
    
    //MARK: - Custom Method
    
    private func presentToWelcomeView() {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
        
        guard let email = signUpView.emailTextField.text else { return }
        welcomeViewController.dataSend(email: email)
        
        self.present(welcomeViewController, animated: true)
    }
    
    //MARK: - Action Method
    
    @objc
    private func gotoWelcomeView() {
        presentToWelcomeView()
    }
}
