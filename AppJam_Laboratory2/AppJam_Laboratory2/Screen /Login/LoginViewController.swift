//
//  LoginViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/20.
//

import Foundation
import UIKit

final class LoginViewController: BaseViewController {
    
    //MARK: - Properties
    
    private lazy var loginView = LoginView()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginView.loginButton.addTarget(self, action: #selector(gotoWelcomeView), for: .touchUpInside)
        loginView.signUpButton.addTarget(self, action: #selector(gotoSignUpView), for: .touchUpInside)
    }
    
    override func loadView() {
        self.view = loginView
    }
    
    //MARK: - Custom Method
    
    private func presentToWelcomeView(email: String) {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
        welcomeViewController.dataSend(email: email)
        self.present(welcomeViewController, animated: true)
    }
    
    private func pushToSignUpView() {
        let signUpViewController = SignUpViewController()
        self.navigationController?.pushViewController(signUpViewController, animated: true)
    }
    
    //MARK: - Action Method
    
    @objc
    private func gotoWelcomeView() {
        postLogin()
    }
    
    @objc
    private func gotoSignUpView() {
        pushToSignUpView()
    }
}

extension LoginViewController {
    func postLogin() {
        guard let email = loginView.emailTextField.text else { return }
        guard let password = loginView.passwordTextField.text else { return }
        let param = LoginRequestDto(emailOrContact: email, password: password)
        UserAPI.shared.login(param: param, completion: { (result) in
            switch result {
            case .success:
                self.presentToWelcomeView(email: email)
            case .requestErr(_):
                print("requestErr")
            case .decodedErr:
                print("decodedErr")
            case .pathErr:
                print("pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            }
        })
    }
}
