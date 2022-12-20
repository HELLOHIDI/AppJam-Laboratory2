//
//  LoginView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/20.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class LoginView: UIView {
    
    private var titleLabel = UILabel().then {
        $0.text = "카카오톡을 시작합니다"
        $0.textColor = UIColor.black
        $0.font = UIFont.systemFont(ofSize: 22)
    }
    
    private var descriptionLabel = UILabel().then {
        $0.text = "사용하던 카카오계정이 있다면 \n 이메일 또는 전화번호로 로그인해 주세요."
        $0.textColor = 0x7D7E7D.color
        $0.font = UIFont.systemFont(ofSize: 15)
    }
    
    private var emailTextField = UITextField().then {
        $0.font = UIFont.systemFont(ofSize: 17)
        $0.textColor = 0xA09FA0.color
        $0.textAlignment = .center
        $0.borderStyle = .none
        $0.placeholder = "이메일 또는 전화번호"
    }
    
    private var emailUnderLineView = UIView().then {
        $0.backgroundColor = 0xA09FA0.color
    }
    
    private var passwordTextField = UITextField().then {
        $0.font = UIFont.systemFont(ofSize: 17)
        $0.textColor = 0xA09FA0.color
        $0.textAlignment = .center
        $0.borderStyle = .none
        $0.placeholder = "비밀번호"
    }
    
    private var passWordUnderLineView = UIView().then {
        $0.backgroundColor = 0xA09FA0.color
    }
    
    private var loginButton = UIButton().then {
        $0.backgroundColor = 0xF6F6F6.color
        $0.setTitle("카카오계정 로그인", for: .normal)
        $0.setTitleColor(0x000000.color, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        $0.titleLabel?.textAlignment = .center
    }
    
    private var signUpButton = UIButton().then {
        $0.backgroundColor = 0xF6F6F6.color
        $0.setTitle("새로운 카카오계정 만들기", for: .normal)
        $0.setTitleColor(0x000000.color, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        $0.titleLabel?.textAlignment = .center
    }
    
    private var findEmailorPasswordButton = UIButton().then {
        $0.backgroundColor = 0xF6F6F6.color
        $0.setTitle("카카오계정 또는 비밀번호 찾기", for: .normal)
        $0.setTitleColor(0x313030.color, for: .normal)
        $0.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        $0.titleLabel?.textAlignment = .center
    }
}

private func setupView() {
   
}

private func setupConstraints() {

}


