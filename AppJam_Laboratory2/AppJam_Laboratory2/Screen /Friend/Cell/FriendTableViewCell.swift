//
//  FriendTableViewCell.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/22.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class FriendTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    static let identifier = "FriendTableViewCell"
    
    //MARK: - UI Components
    private let profileImageView = UIImageView()
    
    private let profileNameLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-SemiBold", size: 12)
        $0.textColor = 0x191919.color
    }
    
    private let profileMessageLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Normal", size: 11)
        $0.textColor = 0xA6A6A6.color
    }
    
    //MARK: - Life Cycles
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
