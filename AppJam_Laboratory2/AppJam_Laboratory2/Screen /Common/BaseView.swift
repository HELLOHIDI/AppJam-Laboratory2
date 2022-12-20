//
//  BaseView.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/20.
//

import UIKit

class BaseView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
        setupConstraints()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupView() {}
    func setupConstraints() {}
}

