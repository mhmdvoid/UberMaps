//
//  Separator.swift
//  UberMaps
//
//  Created by Mohammed mohsen on 5/17/21.
//

import UIKit
// API -> Separator.thick(CGFloat) , .Color, length, .vertical, horizontal, dotted, etc
// makeWave ... etc;
//protocol ISeparator {
//    func thick(is value : CGFloat)
//    func length(is value: CGFloat)
//    var isVertical : Bool { get}
////    var length: CGFloat { get}
//    var width: CGFloat { get}
//    func makeDotted()
//}
class Separator: UIView, SeparatorStructure// and change with
{
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints  = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var length : CGFloat?
    convenience init(bg: UIColor, dimension: CGSize) {
        self.init(frame: .zero)
        self.backgroundColor = bg
        length = dimension.width
        thickness(thick: dimension.height)
    }
    
    
    func thickness(thick: CGFloat) {
        anchor(height: thick)
    }
    
    
    func inside(of view: UIView) -> SeparatorStructure {
        view.addSubview(self)
        return self
    }
    /// You should call to appear
    func underline(view: UIView, offset: CGFloat = 0) {
        
        
        anchor(leading: view.left, bottom: view.bottom, right: view.trailing, paddingLeft: length ?? 10, paddingBottom: offset, paddingRight: -length! )
        
    }
}


protocol SeparatorStructure {
    func underline(view: UIView, offset: CGFloat)
}
