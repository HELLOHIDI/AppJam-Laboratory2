//
//  ChatAdView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/23.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class ChatAdView: BaseView {
    
    //MARK: - UI Components
    
    private var chatAdImageView = UIImageView().then {
        $0.image = Image.adImage
    }
    
    //MARK: - Custom Method
    
    override func setupView() {
        addSubview(chatAdImageView)
    }
    
    override func setupConstraints() {
        chatAdImageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(71.06)
        }
    }
}


