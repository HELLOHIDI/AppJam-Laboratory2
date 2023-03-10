//
//  FriendHeaderView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/22.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class FriendHeaderView: UITableViewHeaderFooterView {
    
    //MARK: - Properties
    
    static let identifier = "FriendHeaderView"
    
    //MARK: - UI Components
    
    private let profileImageView = UIImageView().then{
        $0.image = Image.friendProfileImage
    }
    
    private let profileNameLabel = UILabel().then {
        $0.text = "김솝트"
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 16)
        $0.textColor = 0x191919.color
    }
    
    private let profileMessageLabel = UILabel().then {
        $0.text = "상태메시지는 여기에"
        $0.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 11)
        $0.textColor = 0xA6A6A6.color
    }
    
    //MARK: - Life Cycle
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Custom Method
    
    private func setupView() {
        contentView.backgroundColor = .white
        
        [profileImageView, profileNameLabel, profileMessageLabel].forEach {
            contentView.addSubview($0)
        }
    }
    
    private func setupConstraints() {
        profileImageView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(7)
            $0.leading.equalToSuperview().offset(16)
            $0.width.equalTo(59)
            $0.height.equalTo(58)
        }
        
        profileNameLabel.snp.makeConstraints {
            $0.top.equalToSuperview().offset(19)
            $0.leading.equalTo(self.profileImageView.snp.trailing).offset(11)
        }
        
        profileMessageLabel.snp.makeConstraints {
            $0.top.equalTo(self.profileNameLabel.snp.bottom).offset(6)
            $0.leading.equalTo(self.profileNameLabel)
        }
    }
}
