//
//  BaseViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/20.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        style()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        setNavigationBar()
    }
    
    func style() {
        view.backgroundColor = .white
    }
    
    func setNavigationBar() {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

