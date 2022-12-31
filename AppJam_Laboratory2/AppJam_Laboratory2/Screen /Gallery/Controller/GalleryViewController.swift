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
    }
    
    override func loadView() {
        self.view = galleryView
    }
}
