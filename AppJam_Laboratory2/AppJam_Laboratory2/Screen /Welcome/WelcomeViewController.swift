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
    }
}

