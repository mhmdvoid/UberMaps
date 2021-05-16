//
//  UIView+Extension.swift
//  UberMaps
//
//  Created by Mohammed mohsen on 5/17/21.
//

import Foundation
import UIKit

enum Anchors {
    case top(UIView, CGFloat = 0, Bool = false), left(UIView, CGFloat = 0, Bool = false), bottom(UIView, CGFloat = 0, Bool = false), right(UIView, CGFloat = 0, Bool = false)
}

extension UIView {
    /// args: top, left, bottom, right;
    func anchor(_ anchors: [Anchors]) {
        if anchors.count > 4 {  // TODO: handle anchor validation
            print("THROW ERROR")
        }
        translatesAutoresizingMaskIntoConstraints = false
        
        for eachAnchor in anchors {
            switch eachAnchor {
            case .top(let theView, let offset, let isSafeArea):
                top.constraint(equalTo: isSafeArea ? theView.safeAreaLayoutGuide.topAnchor : theView.top, constant: offset).isActive = true
            case .left(let theView, let offset, let isSafeArea) :
                left.constraint(equalTo: isSafeArea ? theView.safeAreaLayoutGuide.leftAnchor :theView.left, constant: offset).isActive = true
            case .bottom(let theView, let offset, let isSafeArea):
                bottom.constraint(equalTo: isSafeArea ? theView.safeAreaLayoutGuide.bottomAnchor : theView.bottom, constant: offset).isActive = true
            case .right(let theView, let offset, let isSafeArea) :
                trailing.constraint(equalTo: isSafeArea ? theView.safeAreaLayoutGuide.trailingAnchor :theView.trailing, constant: offset).isActive = true
            }
        }
    }
    
    func centerX(in view: UIView) {
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true 
    }
}

extension UIView {
    var top : NSLayoutYAxisAnchor {
        return self.topAnchor
    }
    var left : NSLayoutXAxisAnchor {
        return self.leftAnchor
    }
    var bottom : NSLayoutYAxisAnchor {
        return self.bottomAnchor
    }
    var trailing : NSLayoutXAxisAnchor {
        return self.trailingAnchor
    }
}
