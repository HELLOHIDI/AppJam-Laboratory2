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

final class FriendView: BaseView {
    
    private let friendTopView = FriendTopView()
    
    public lazy var friendTableView = UITableView(frame: .zero, style: .grouped).then {
        $0.backgroundColor = .clear
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.separatorStyle = .none
        $0.delegate = self
        $0.dataSource = self
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
            $0.top.equalTo(self.friendTopView.snp.bottom)
            $0.bottom.equalToSuperview()
            $0.width.equalToSuperview()
        }
    }
}
