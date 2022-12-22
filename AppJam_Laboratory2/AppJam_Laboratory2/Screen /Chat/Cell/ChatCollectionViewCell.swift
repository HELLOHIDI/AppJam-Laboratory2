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
}

