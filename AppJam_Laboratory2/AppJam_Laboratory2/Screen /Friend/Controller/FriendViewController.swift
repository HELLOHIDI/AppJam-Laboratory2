//
//  FriendViewController.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/21.
//

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
        friendView.friendTableView.register(FriendTableViewCell.self, forCellReuseIdentifier: FriendTableViewCell.identifier)
    }
}

