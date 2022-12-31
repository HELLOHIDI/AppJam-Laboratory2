//
//  GalleryCollectionViewCell.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/31.
//

import Foundation
import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    //MARK: - Properties
    
    static let identifier = "GalleryCollectionViewCell"
    
    //MARK: - UI Components
    
    private var galleryImageView = UIImageView()
    
    //MARK: - Life Cycles
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Custom Method
    
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
