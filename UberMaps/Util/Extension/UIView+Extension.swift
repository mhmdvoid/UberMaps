//
//  UIView+Extension.swift
//  UberMaps
//
//  Created by Mohammed mohsen on 5/17/21.
//

import Foundation
import UIKit

//enum Anchors {
//    case top(UIView, CGFloat = 0, Bool = false, side: NSLayoutYAxisAnchor? = nil),
//         left(UIView, CGFloat = 0, Bool = false,   side: NSLayoutXAxisAnchor? = nil),
//         bottom(UIView, CGFloat = 0, Bool = false, side: NSLayoutYAxisAnchor? = nil),
//         right(UIView, CGFloat = 0, Bool = false, side: NSLayoutXAxisAnchor? = nil)
//}

extension UIView {
//    /// args: top, left, bottom, right;
//    func anchor(_ anchors: [Anchors]) {
//        if anchors.count > 4 {  // TODO: handle anchor validation
//            print("THROW ERROR")
//        }
//        translatesAutoresizingMaskIntoConstraints = false
//        // getting more complex;
//        for eachAnchor in anchors {
//            switch eachAnchor {
//            case .top(let theView, let offset, let isSafeArea, let side):
//                top.constraint(equalTo: isSafeArea ? theView.safeAreaLayoutGuide.topAnchor : theView.top, constant: offset).isActive = true
//            case .left(let theView, let offset, let isSafeArea) :
//                left.constraint(equalTo: isSafeArea ? theView.safeAreaLayoutGuide.leftAnchor :theView.left, constant: offset).isActive = true
//            case .bottom(let theView, let offset, let isSafeArea):
//                bottom.constraint(equalTo: isSafeArea ? theView.safeAreaLayoutGuide.bottomAnchor : theView.bottom, constant: offset).isActive = true
//            case .right(let theView, let offset, let isSafeArea) :
//                trailing.constraint(equalTo: isSafeArea ? theView.safeAreaLayoutGuide.trailingAnchor :theView.trailing, constant: offset).isActive = true
//            }
//        }
//    }
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                leading: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                paddingTop: CGFloat = 0,
                paddingLeft: CGFloat = 0,
                paddingBottom: CGFloat = 0,
                paddingRight: CGFloat = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right {
            trailingAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func centerX(inView view: UIView) {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func centerY(inView view: UIView, leftAnchor: NSLayoutXAxisAnchor? = nil,
                 paddingLeft: CGFloat = 0, constant: CGFloat = 0) {
        
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant).isActive = true
        
        if let left = leftAnchor {
            anchor(leading: left, paddingLeft: paddingLeft)
        }
    }
    
    func setDimensions(height: CGFloat, width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
}

extension UIView {
    var top : NSLayoutYAxisAnchor {
        return self.topAnchor
    }
    var left : NSLayoutXAxisAnchor {
        return self.leadingAnchor
    }
    var bottom : NSLayoutYAxisAnchor {
        return self.bottomAnchor
    }
    var trailing : NSLayoutXAxisAnchor {
        return self.trailingAnchor
    }
}
