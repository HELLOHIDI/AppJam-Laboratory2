//
//  ChatCollectionView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/23.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class ChatCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    static let identifier = "ChatCollectionViewCell"
    
    //MARK: - UI Components

    private let profileImageView = UIImageView().then {
        $0.makeRounded(radius: 18)
    }
    
    private let profileNameLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 12)
        $0.textColor = 0x191919.color
    }
    
    private let profileMessageLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 11)
        $0.textColor = 0xA6A6A6.color
    }
    
    private let sendTimeLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 8)
        $0.textColor = 0xA6A6A6.color
    }
    
    //MARK: - Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Custom Method
    
    private func setupView() {
        [profileImageView, profileNameLabel, profileMessageLabel, sendTimeLabel].forEach{
            contentView.addSubview($0)
        }
    }
    
    private func setupConstraints() {
        profileImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(4)
            $0.leading.equalToSuperview().offset(16)
            $0.width.equalTo(44)
            $0.height.equalTo(41)
        }
        
        profileNameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.leading.equalTo(self.profileImageView.snp.trailing).offset(11)
        }
        
        profileMessageLabel.snp.makeConstraints {
            $0.top.equalTo(self.profileNameLabel.snp.bottom).offset(3)
            $0.leading.equalTo(self.profileNameLabel)
        }
        
        sendTimeLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(10)
            $0.trailing.equalToSuperview().inset(16)
        }
    }
    
    public func dataBind(model: FriendModel) {
        profileImageView.image = model.profileImage
        profileNameLabel.text = model.profileName
        profileMessageLabel.text = model.profileMessage
        sendTimeLabel.text = model.sendTime
    }
}

