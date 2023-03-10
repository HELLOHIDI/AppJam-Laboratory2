//
//  SignUpView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/21.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class SignUpView: BaseView {
    
    //MARK: - UI Components
    
    private var titleLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 22)
        $0.text = "카카오톡을 시작합니다"
        $0.textColor = UIColor.black
        $0.textAlignment = .center
    }
    
    public var emailTextField = UITextField().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 17)
        $0.textColor = 0x000000.color
        $0.borderStyle = .none
        $0.attributedPlaceholder = NSAttributedString(
            string: "이메일 또는 전화번호",
            attributes: [NSAttributedString.Key.foregroundColor : 0xA09FA0.color]
        )
    }
    
    private var emailUnderLineView = UIView().then {
        $0.backgroundColor = 0xA09FA0.color
    }
    
    public var passwordTextField = UITextField().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 17)
        $0.textColor = 0x000000.color
        $0.borderStyle = .none
        $0.attributedPlaceholder = NSAttributedString(
            string: "비밀번호",
            attributes: [NSAttributedString.Key.foregroundColor : 0xA09FA0.color]
        )
    }
    
    private var passWordUnderLineView = UIView().then {
        $0.backgroundColor = 0xA09FA0.color
    }
    
    public var checkPassWordTextField = UITextField().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 17)
        $0.textColor = 0x000000.color
        $0.borderStyle = .none
        $0.attributedPlaceholder = NSAttributedString(
            string: "비밀번호 확인",
            attributes: [NSAttributedString.Key.foregroundColor : 0xA09FA0.color]
        )
    }
    
    private var checkPassWordUnderLineView = UIView().then {
        $0.backgroundColor = 0xA09FA0.color
    }
    
    public var signUpButton = UIButton().then {
        $0.backgroundColor = 0xF6F6F6.color
        $0.setTitle("새로운 카카오계정 만들기", for: .normal)
        $0.setTitleColor(0x000000.color, for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 15)
        $0.titleLabel?.textAlignment = .center
    }
    
    //MARK: - Custom Method
    
    override func setupView() {
        
        [titleLabel, emailTextField, emailUnderLineView, passwordTextField, passWordUnderLineView,
         checkPassWordTextField, checkPassWordUnderLineView, signUpButton].forEach{
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide).offset(40)
            $0.leading.trailing.equalTo(self.safeAreaLayoutGuide).inset(89)
            $0.width.equalTo(197)
            $0.height.equalTo(25)
        }
        
        emailTextField.snp.makeConstraints {
            $0.top.equalTo(self.titleLabel.snp.bottom).offset(129)
            $0.leading.equalTo(self.safeAreaLayoutGuide).offset(21)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-212)
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
        }
        
        passWordUnderLineView.snp.makeConstraints {
            $0.top.equalTo(self.passwordTextField.snp.bottom).offset(13)
            $0.leading.equalTo(self.emailTextField)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-4)
            $0.width.equalTo(350)
            $0.height.equalTo(1)
        }
        
        checkPassWordTextField.snp.makeConstraints {
            $0.top.equalTo(self.passWordUnderLineView.snp.bottom).offset(23)
            $0.leading.equalTo(self.emailTextField)
        }
        
        checkPassWordUnderLineView.snp.makeConstraints {
            $0.top.equalTo(self.checkPassWordTextField.snp.bottom).offset(13)
            $0.leading.equalTo(self.emailTextField)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-4)
            $0.width.equalTo(350)
            $0.height.equalTo(1)
        }
        
        signUpButton.snp.makeConstraints {
            $0.top.equalTo(self.checkPassWordUnderLineView.snp.bottom).offset(26)
            $0.leading.equalTo(self.emailTextField)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-21)
            $0.width.equalTo(333)
            $0.height.equalTo(44)
        }
    }
}

