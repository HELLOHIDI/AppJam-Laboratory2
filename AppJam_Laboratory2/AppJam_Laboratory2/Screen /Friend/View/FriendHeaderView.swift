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
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 16)
        $0.textColor = 0x191919.color
    }
    
    private let profileMessageLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 11)
        $0.textColor = 0xA6A6A6.color
    }
}
