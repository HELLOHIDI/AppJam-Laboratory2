//
//  UIView+.swift
//  AppJam_Laboratory2
//
//  Created by 류희재 on 2022/12/22.
//

import Foundation
import UIKit

extension UIView {
    
    public func makeRounded(radius: CGFloat) {
        
        self.clipsToBounds = true
        self.layer.cornerRadius = radius
    }
    
    public func makeColorRounded(_ radius: CGFloat, _ width: CGFloat, _ color: UIColor) {
        
        self.makeRounded(radius: radius)
        layer.borderWidth = width
        layer.borderColor = color.cgColor
    }
}
