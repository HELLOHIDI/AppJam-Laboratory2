//
//  GalleryTopView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/31.
//

import Foundation
import UIKit

import SwiftyColor
import Then

final class GalleryTopView: BaseView {
    
    //MARK: - UI Components
    
    public var closeButton = UIButton().then {
        $0.setImage(Image.close, for: .normal)
    }
    
    private var titleLabel = UILabel().then {
        $0.text = "최근 항목"
        $0.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 16)
        $0.textColor = 0x000000.color
    }
    
    private var sendLabel = UILabel().then {
        $0.text = "전송"
        $0.font = UIFont(name: "AppleSDGothicNeo-Medium", size: 16)
        $0.textColor = 0x000000.color
    }
    
    override func setupView() {
        [closeButton, titleLabel, sendLabel].forEach {
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        closeButton.snp.makeConstraints {
            $0.top.equalToSuperview().offset(12)
            $0.leading.equalToSuperview().offset(17)
            $0.size.equalTo(14)
        }
        
        titleLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(11)
            $0.leading.equalTo(self.closeButton.snp.trailing).offset(129)
        }
        
        sendLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(11)
            $0.leading.equalTo(self.titleLabel.snp.trailing).offset(116)
        }
    }
}

