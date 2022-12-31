//
//  GalleryViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/31.
//

import UIKit

import SnapKit
import SwiftyColor
import Then

final class GalleryViewController : BaseViewController{
    
    //MARK: - Properties
    public var photoIndexArray: [Int] = []
    
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
        galleryView.galleryCollectionView.delegate = self
        galleryView.galleryCollectionView.dataSource = self
        
        galleryView.galleryCollectionView.register(
            GalleryCollectionViewCell.self, forCellWithReuseIdentifier: GalleryCollectionViewCell.identifier)
    }
}

extension GalleryViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 123, height: 123)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 7
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell  = collectionView.cellForItem(at: indexPath) as! GalleryCollectionViewCell
        
        if photoIndexArray.contains(indexPath.item) {
            photoIndexArray.remove(at: Int(cell.indexLabel.text!)!-1)
            cell.deSelectedPhotoLayout()
        } else {
            photoIndexArray.append(indexPath.item)
            cell.selectedPhotoLayout()
        }
        
        if !photoIndexArray.isEmpty {
            for i in 0...photoIndexArray.count-1 {
                let index = IndexPath(item: photoIndexArray[i], section: 0)
                let cell = collectionView.cellForItem(at: index) as! GalleryCollectionViewCell
                cell.indexLabel.text = "\(i+1)"
            }
        }
        updateSendLabel()
    }
}


extension GalleryViewController: UICollectionViewDataSource {
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

extension GalleryViewController {
    public func updateSendLabel() {
        var sendText = galleryView.galleryTopView.sendLabel.text!
        if !photoIndexArray.isEmpty {
            sendText = String(photoIndexArray.count) + "전송"
            let attributeString = NSMutableAttributedString(string: sendText)
            attributeString.addAttribute(.foregroundColor, value: 0xF6DD2A.color, range: (sendText as NSString).range(of: String(photoIndexArray.count)))
            galleryView.galleryTopView.sendLabel.attributedText = attributeString
        } else {
            galleryView.galleryTopView.sendLabel.text = "전송"
        }
    }
}
