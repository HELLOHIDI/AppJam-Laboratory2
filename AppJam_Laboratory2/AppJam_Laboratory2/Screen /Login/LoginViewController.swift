//
//  LoginViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/20.
//

import Foundation
import UIKit

class LoginViewController: BaseViewController {

    private lazy var loginView = LoginView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = loginView
    }
    
}
