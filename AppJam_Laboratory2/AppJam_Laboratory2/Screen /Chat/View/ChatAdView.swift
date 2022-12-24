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

final class ChatAdView: UICollectionReusableView {
    
    static let identifier = "ChatAdView"
    
    //MARK: - UI Components
    
    private var chatAdImageView = UIImageView().then {
        $0.image = Image.adImage
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
        addSubview(chatAdImageView)
    }
    
    private func setupConstraints() {
        chatAdImageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(71.06)
        }
    }
}


