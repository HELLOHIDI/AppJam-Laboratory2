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
    
    private var emailTextField = UITextField().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 17)
        $0.textColor = 0x000000.color
        $0.textAlignment = .center
        $0.borderStyle = .none
        $0.attributedPlaceholder = NSAttributedString(
            string: "이메일 또는 전화번호",
            attributes: [NSAttributedString.Key.foregroundColor : 0xA09FA0.color]
        )
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
    
    private var checkPassWordTextField = UITextField().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 17)
        $0.textColor = 0xA09FA0.color
        $0.textAlignment = .center
        $0.borderStyle = .none
        $0.placeholder = "비밀번호 확인"
    }
    
    private var checkPassWordUnderLineView = UIView().then {
        $0.backgroundColor = 0xA09FA0.color
    }
    
    private var SignUpButton = UIButton().then {
        $0.backgroundColor = 0xF6F6F6.color
        $0.setTitle("새로운 카카오계정 만들기", for: .normal)
        $0.setTitleColor(0x000000.color, for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 15)
        $0.titleLabel?.textAlignment = .center
    }
}

