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
    }
    
    private var signUpButton = UIButton().then {
        $0.backgroundColor = 0xFBE54C.color
        $0.setTitle("확인", for: .normal)
        $0.setTitleColor(0x000000.color, for: .normal)
        $0.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 15)
        $0.titleLabel?.textAlignment = .center
    }
}
