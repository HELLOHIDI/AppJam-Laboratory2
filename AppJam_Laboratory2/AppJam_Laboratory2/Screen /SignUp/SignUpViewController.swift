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
    
    private func presentToWelcomeView(email: String) {
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .formSheet
        welcomeViewController.dataSend(email: email)
        
        self.present(welcomeViewController, animated: true)
    }
    
    //MARK: - Action Method
    
    @objc
    private func gotoWelcomeView() {
        signUp()
    }
}

extension SignUpViewController {
    func signUp() {
        guard let email = signUpView.emailTextField.text else { return }
        guard let password = signUpView.passwordTextField.text else { return }
        guard let checkPassword = signUpView.checkPassWordTextField.text else { return }
        let param = SignupRequestDto(emailOrContact: email, password: password, passwordCheck: checkPassword)
        
        UserAPI.shared.signUp(param: param, completion: {(result) in
            switch result {
            case .success:
                self.presentToWelcomeView(email: email)
            case .pathErr:
                print(".pathErr")
            case .serverErr:
                print("serverErr")
            case .networkFail:
                print("networkFail")
            case .requestErr(_):
                print("requestErr")
            case .decodedErr:
                print("decodedErr")
            }
        })
    }
}
