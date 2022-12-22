//
//  ChatView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/23.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class ChatView: BaseView {
    
    //MARK: - UI Components
    
    private let chatTopView = ChatTopView()
    private let chatAdView = ChatAdView()
    
    public lazy var chatCollectionView = UICollectionView(
        frame: .zero, collectionViewLayout: UICollectionViewLayout()).then {
            $0.backgroundColor = .white
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.isScrollEnabled = true
            $0.showsVerticalScrollIndicator = false
        }
}


