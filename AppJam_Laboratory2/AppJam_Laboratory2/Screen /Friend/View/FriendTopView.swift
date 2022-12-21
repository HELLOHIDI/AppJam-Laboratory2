//
//  FriendTopView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/21.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then


final class FriendTopView: BaseView {
    
    //MARK: - UI Components
    
    private var friendLabel = UILabel().then {
        $0.text = "친구"
        $0.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 22)
        $0.textColor = 0x000000.color
    }
    
    private var settingIcon = UIImageView().then {
        $0.image = UIImage(named: "ic_setting")
    }
    
    //MARK: - Custom Method
    
    override func setupView() {
        [friendLabel,settingIcon].forEach{
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        friendLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(15)
            $0.leading.equalToSuperview().offset(14)
        }
        
        settingIcon.snp.makeConstraints{
            $0.top.equalToSuperview().offset(17)
            $0.trailing.equalToSuperview().inset(16)
            $0.size.equalTo(19)
        }
    }
}
