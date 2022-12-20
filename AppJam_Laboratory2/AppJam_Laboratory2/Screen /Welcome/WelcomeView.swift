//
//  WelcomeView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/21.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class WelcomeView: BaseView {
    
    //MARK: - UI Components
    
    private var titleLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 20)
        $0.text = "000님 \n 환영합니다"
        $0.textColor = UIColor.black
        $0.textAlignment = .center
        $0.numberOfLines = 2
    }
    
    private var welcomeButton = UIButton().then {
        $0.backgroundColor = 0xFBE54C.color
        $0.setTitle("확인", for: .normal)
        $0.setTitleColor(0x000000.color, for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 15)
        $0.titleLabel?.textAlignment = .center
    }
    
    //MARK: - Custom Method
    
    override func setupView() {
        [titleLabel, welcomeButton].forEach{
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        
        titleLabel.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide).offset(197)
            $0.leading.equalTo(self.safeAreaLayoutGuide).offset(144)
            $0.trailing.equalTo(self.safeAreaLayoutGuide).offset(-144)
        }
        
        welcomeButton.snp.makeConstraints {
            $0.top.equalTo(self.titleLabel).offset(117)
            $0.leading.trailing.equalTo(self.safeAreaLayoutGuide).inset(21)
            $0.width.equalTo(333)
            $0.height.equalTo(44)
        }
    }
}
