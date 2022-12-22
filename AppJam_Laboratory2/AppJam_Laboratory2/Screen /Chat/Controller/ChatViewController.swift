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

//MARK: - UICollectionViewDelegateFlowLayout
extension ChatView: UICollectionViewDelegateFlowLayout {
    
}

extension ChatView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return chatDummyModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let chatCell = collectionView.dequeueReusableCell(
            withReuseIdentifier: ChatCollectionViewCell.identifier, for: indexPath)
                as? ChatCollectionViewCell else { return UICollectionViewCell() }
        chatCell.dataBind(model: chatDummyModel[indexPath.row])
        return chatCell
    }
}
