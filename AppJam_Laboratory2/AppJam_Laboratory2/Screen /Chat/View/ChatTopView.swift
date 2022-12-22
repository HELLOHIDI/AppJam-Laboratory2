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
    
    //MARK: - Custom Method
    
    override func setupView() {
        [chatLabel, openChatLabel, plusButton, settingIcon].forEach {
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        chatLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(15)
            $0.leading.equalToSuperview().offset(14)
        }
        
        openChatLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(15)
            $0.leading.equalTo(self.chatLabel.snp.trailing).offset(7)
        }
        
        plusButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(17)
            $0.leading.equalTo(self.openChatLabel.snp.trailing).offset(173)
            $0.size.equalTo(19)
        }
        
        settingIcon.snp.makeConstraints{
            $0.top.equalToSuperview().offset(17)
            $0.leading.equalTo(self.plusButton.snp.trailing).offset(12)
            $0.size.equalTo(19)
        }
    }
}
