//
//  GalleryView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/31.
//

import Foundation
import UIKit

import SwiftyColor
import Then

final class GalleryView: BaseView {
    
    private let galleryTopView = GalleryTopView()
    
    public lazy var galleryCollectionView = UICollectionView(
        frame: .zero, collectionViewLayout: UICollectionViewFlowLayout()).then {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.isScrollEnabled = true
            $0.showsVerticalScrollIndicator = false
            $0.alwaysBounceVertical = true
            $0.delegate = self
            $0.dataSource = self
        }
    
    override func setupView() {
        [galleryTopView, galleryCollectionView].forEach {
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        galleryTopView.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide)
            $0.leading.trailing.equalToSuperview()
            $0.height.equalTo(38)
        }
        
        galleryCollectionView.snp.makeConstraints {
            $0.top.equalTo(self.galleryTopView.snp.bottom)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalToSuperview()
        }
    }
}

