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

final class LoginView: BaseView {
    
    private var titleLabel = UILabel().then {
        $0.text = "카카오톡을 시작합니다"
        $0.textColor = UIColor.black
        $0.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 22)
        $0.textAlignment = .center
    }
    
    private var descriptionLabel = UILabel().then {
        $0.text = "사용하던 카카오계정이 있다면\n이메일 또는 전화번호로 로그인해 주세요."
        $0.textColor = 0x7D7E7D.color
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 15)
        $0.numberOfLines = 2
        $0.textAlignment = .center
    }
    
    private var emailTextField = UITextField().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 17)
        $0.textColor = 0x000000.color
        $0.textAlignment = .center
        $0.borderStyle = .none
        $0.attributedPlaceholder = NSAttributedString(string: "이메일 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor : 0xA09FA0.color])
    }
    
    private var emailUnderLineView = UIView().then {
        $0.backgroundColor = 0xA09FA0.color
    }
    
    private var passwordTextField = UITextField().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 17)
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
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 15)
        $0.titleLabel?.textAlignment = .center
    }
    
    private var signUpButton = UIButton().then {
        $0.backgroundColor = 0xF6F6F6.color
        $0.setTitle("새로운 카카오계정 만들기", for: .normal)
        $0.setTitleColor(0x000000.color, for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 15)
        $0.titleLabel?.textAlignment = .center
    }
    
    private var findEmailorPasswordButton = UIButton().then {
        $0.backgroundColor = 0xffffff.color
        $0.setTitle("카카오계정 또는 비밀번호 찾기", for: .normal)
        $0.setTitleColor(0x313030.color, for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 13)
        $0.titleLabel?.textAlignment = .center
    }
    
    override func setupView() {
        [titleLabel, descriptionLabel, emailTextField, emailUnderLineView,
         passwordTextField, passWordUnderLineView, loginButton, signUpButton,findEmailorPasswordButton].forEach{
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide).offset(40)
            $0.leading.equalTo(self.safeAreaLayoutGuide).offset(89)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-89)
            $0.width.equalTo(197)
            $0.height.equalTo(25)
        }
        
        descriptionLabel.snp.makeConstraints {
            $0.top.equalTo(self.titleLabel.snp.bottom).offset(20)
            $0.leading.equalTo(self.safeAreaLayoutGuide).offset(67)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-68)
        }
        
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(self.descriptionLabel.snp.bottom).offset(73)
            $0.leading.equalTo(self.safeAreaLayoutGuide).offset(21)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-212)
            $0.width.equalTo(142)
            $0.height.equalTo(23)
        }
        
        emailUnderLineView.snp.makeConstraints {
            $0.top.equalTo(self.emailTextField.snp.bottom).offset(13)
            $0.leading.equalTo(self.emailTextField)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-4)
            $0.width.equalTo(350)
            $0.height.equalTo(1)
        }
        
        passwordTextField.snp.makeConstraints {
            $0.top.equalTo(self.emailUnderLineView.snp.bottom).offset(23)
            $0.leading.equalTo(self.emailTextField)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-295)
            $0.width.equalTo(59)
            $0.height.equalTo(23)
        }
        
        passWordUnderLineView.snp.makeConstraints {
            $0.top.equalTo(self.passwordTextField.snp.bottom).offset(13)
            $0.leading.equalTo(self.emailTextField)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-4)
            $0.width.equalTo(350)
            $0.height.equalTo(1)
        }
        
        loginButton.snp.makeConstraints {
            $0.top.equalTo(self.passWordUnderLineView.snp.bottom).offset(35)
            $0.leading.equalTo(self.emailTextField)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-21)
            $0.width.equalTo(333)
            $0.height.equalTo(44)
        }
        
        signUpButton.snp.makeConstraints {
            $0.top.equalTo(self.loginButton.snp.bottom).offset(10)
            $0.leading.equalTo(self.emailTextField)
            $0.trailing.equalTo(self.loginButton)
            $0.width.equalTo(333)
            $0.height.equalTo(44)
        }
        
        findEmailorPasswordButton.snp.makeConstraints {
            $0.top.equalTo(self.signUpButton.snp.bottom).offset(19)
            // 같이 쓸 수 있는지 확인
            $0.leading.equalTo(self.safeAreaLayoutGuide).offset(112)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-112)
            $0.width.equalTo(151)
            $0.height.equalTo(20)
        }
    }
    
}



