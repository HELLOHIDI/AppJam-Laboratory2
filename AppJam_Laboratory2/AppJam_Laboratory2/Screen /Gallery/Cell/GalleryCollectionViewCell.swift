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
    
    public var galleryImageView = UIImageView().then {
        $0.backgroundColor = .white
    }
    
    public var indexView = UIView().then {
        $0.backgroundColor = 0xF6DD2A.color
        $0.makeRounded(radius: 9)
        $0.isHidden = true
    }
    
    public var indexLabel = UILabel().then {
        $0.font = UIFont(name: "AppleSDGothicNeo-Regular", size: 10)
        $0.textColor = 0x000000.color
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
        contentView.backgroundColor = .white
        contentView.addSubview(galleryImageView)
        galleryImageView.addSubview(indexView)
        indexView.addSubview(indexLabel)
    }
    
    private func setupConstraints() {
        galleryImageView.snp.makeConstraints {
            $0.top.equalToSuperview()
            $0.leading.equalToSuperview()
            $0.size.equalTo(123)
        }
        
        indexView.snp.makeConstraints {
            $0.top.equalToSuperview().offset(4)
            $0.leading.equalToSuperview().offset(97)
            $0.size.equalTo(18)
        }
        
        indexLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.centerY.equalToSuperview()
        }
    }
    
    public func dataBind(model: GalleryModel){
        galleryImageView.image = model.galleryImage
    }
    
    public func selectedPhotoLayout() {
        galleryImageView.layer.borderWidth = 3
        galleryImageView.layer.borderColor = 0xF6DD2A.color.cgColor
        indexView.isHidden = false
    }
    
    public func deSelectedPhotoLayout() {
        galleryImageView.layer.borderWidth = 0
        indexView.isHidden = true
    }
}
