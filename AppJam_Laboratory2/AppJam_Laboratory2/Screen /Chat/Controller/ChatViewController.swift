//
//  ChatViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/23.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class ChatViewController: BaseViewController {
    
    //MARK: - Properties
    
    private let chatView = ChatView()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
    }
    
    override func loadView() {
        self.view = chatView
    }
    
    //MARK: - Custom Method
    
    private func register() {
        chatView.chatCollectionView.register(
            ChatCollectionViewCell.self,
            forCellWithReuseIdentifier: ChatCollectionViewCell.identifier)
    }
}

