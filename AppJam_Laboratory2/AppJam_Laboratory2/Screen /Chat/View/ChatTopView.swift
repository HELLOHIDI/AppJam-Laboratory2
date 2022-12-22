//
//  ChatTopView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/23.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class ChatTopView: BaseView {
    
    //MARK: - UI Components
    
    private var chatLabel = UILabel().then {
        $0.text = "채팅"
        $0.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 22)
        $0.textColor = 0x000000.color
    }
    
    private var openChatLabel = UILabel().then {
        $0.text = "오픈채팅"
        $0.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 22)
        $0.textColor = 0xA6A6A6.color
    }
    
    private var plusButton = UIButton().then {
        $0.setImage(Image.plus, for: .normal)
    }
    
    private var settingIcon = UIImageView().then {
        $0.image = Image.setting
    }
}
