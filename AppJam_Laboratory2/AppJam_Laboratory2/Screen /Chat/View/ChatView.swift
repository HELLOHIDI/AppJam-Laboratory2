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
//    private let chatAdView = ChatAdView()
    
    public lazy var chatCollectionView = UICollectionView(
        frame: .zero, collectionViewLayout: UICollectionViewLayout()).then {
            $0.backgroundColor = .white
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.isScrollEnabled = true
            $0.showsVerticalScrollIndicator = false
            $0.delegate = self
            $0.dataSource = self
        }
    
    override func setupView() {
        [chatTopView, chatCollectionView].forEach {
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        chatTopView.snp.makeConstraints{
            $0.top.equalToSuperview()
            $0.width.equalToSuperview()
            $0.height.equalTo(52)
        }
        
        chatCollectionView.snp.makeConstraints {
            $0.top.equalTo(self.chatTopView.snp.bottom)
            $0.width.equalToSuperview()
            $0.height.equalTo(50 * chatDummyModel.count)
            $0.bottom.equalToSuperview()
        }
    }
}


