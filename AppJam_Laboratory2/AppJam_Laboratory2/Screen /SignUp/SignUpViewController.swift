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
    }
    
    override func loadView() {
        self.view = signUpView
    }
}