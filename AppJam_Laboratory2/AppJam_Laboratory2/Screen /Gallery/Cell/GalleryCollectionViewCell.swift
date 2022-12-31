//
//  GalleryCollectionViewCell.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/31.
//

import Foundation
import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    private var galleryImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        contentView.backgroundColor = .white
        contentView.addSubview(galleryImageView)
    }
    
    private func setupConstraints() {
        galleryImageView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
    }
}
