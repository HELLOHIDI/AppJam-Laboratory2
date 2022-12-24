//
//  FriendViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/21.
//

import Foundation
import UIKit

import SnapKit
import SwiftyColor
import Then

class FriendViewController: BaseViewController {
    
    //MARK: - Properties
    
    private lazy var friendView = FriendView()
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        register()
    }
    
    override func loadView() {
        self.view = friendView
    }
    
    //MARK: - Custom Method
    
    private func register() {
        friendView.friendTableView.register(
            FriendTableViewCell.self, forCellReuseIdentifier: FriendTableViewCell.identifier)
        
        friendView.friendTableView.register(
            FriendHeaderView.self, forHeaderFooterViewReuseIdentifier: FriendHeaderView.identifier)
    }
}

//MARK: - UITableViewDelegate

extension FriendView: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 73
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        guard let headerView = tableView.dequeueReusableHeaderFooterView(
            withIdentifier: FriendHeaderView.identifier)
                as? FriendHeaderView else { return UIView() }
        return headerView
    }
}

//MARK: - UITableViewDataSource

extension FriendView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
    Int {
        return friendDummyModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
    UITableViewCell {
        guard let friendCell = tableView.dequeueReusableCell(
            withIdentifier: FriendTableViewCell.identifier, for: indexPath)
                as? FriendTableViewCell else { return UITableViewCell() }
        
        friendCell.dataBind(model: friendDummyModel[indexPath.row])
        return friendCell
    }
}

