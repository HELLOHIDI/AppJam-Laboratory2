//
//  GalleryViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/31.
//

import UIKit

import SnapKit
import Then

final class GalleryViewController : BaseViewController{
    
    //MARK: - Properties
    
    private let galleryView = GalleryView()
    
    //MARK: - UI Components
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
    }
    
    override func loadView() {
        self.view = galleryView
    }
    
    private func register() {
        galleryView.galleryCollectionView.register(
            GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.identifier)
    }
}

extension GalleryView: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let itemSpacing = 9
        let width = (Int(UIScreen.main.bounds.width) - (itemSpacing * 2)) / 3
        let height = width
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 9
    }
}

extension GalleryView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        galleryDummyModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let galleryCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: GalleryCollectionViewCell.identifier, for: indexPath)
                as? GalleryCollectionViewCell else { return UICollectionViewCell() }
        galleryCell.dataBind(model: galleryDummyModel[indexPath.item])
        return galleryCell
    }
}
