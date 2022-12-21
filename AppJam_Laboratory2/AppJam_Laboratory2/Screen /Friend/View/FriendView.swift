//
//  FriendView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/21.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

final class FriendView: BaseView{
    
    private let friendTopView = FriendTopView()
    
    private lazy var friendTableView = UITableView().then {
        $0.backgroundColor = .clear
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.separatorStyle = .none
    }
    
    override func setupView() {
        [friendTopView, friendTableView].forEach{
            addSubview($0)
        }
    }
    
    override func setupConstraints() {
        friendTopView.snp.makeConstraints {
            $0.top.equalTo(self.safeAreaLayoutGuide)
            $0.width.equalToSuperview()
            $0.height.equalTo(52)
        }
        
        friendTableView.snp.makeConstraints {
            $0.top.equalTo(self.friendTableView.snp.bottom)
            $0.bottom.equalToSuperview()
            $0.width.equalToSuperview()
            //$0.height.equalTo()
        }
    }
}
