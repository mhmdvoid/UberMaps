//
//  UIViewOfText.swift
//  UberMaps
//
//  Created by Mohammed mohsen on 5/17/21.
//

import UIKit


class TextFieldContainer: UIView {  // container itself should placed properly

    // now we need a stack  to compose all that and give it an API ; we need to create a shape inside of it!;
    // MARK: Composition
    private var textField : TextFieldOfContainer?
    private let separator = Separator(bg: UIColor(white: 1, alpha: 0.7), dimension: .init(width: 15, height: 1))   // this is my use;
    
    private let imageView : UIImageView = {
        let iv = UIImageView()
        
        iv.setDimensions(height: 22, width: 22)
        iv.alpha = 0.87
        return iv
    }()
    // now keep your ass textField;
    override init(frame: CGRect) {
        super.init(frame: frame )
        
    }
    
    fileprivate func setupTextField() {
        textField!.anchor(leading: imageView.trailing, bottom: bottom, right: trailing, paddingLeft: 15,
                          paddingRight: -15)
        textField?.centerY(inView: self)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textField: TextFieldOfContainer, shape: UIImage) {
        self.init(frame: .zero)
        self.textField = textField
        self.textField?.keyboardAppearance = .dark
        imageView.image = shape
        addSubview(textField)  // textField should be anchored itself!
        addSubview(imageView)
        setupShape()
        setupTextField()
        separator.inside(of: self).underline(view: self, offset: -5)
        
    }
    
    
    fileprivate func setupShape() {
        imageView.anchor(leading: leadingAnchor, paddingLeft: 12)
        imageView.centerY(inView: textField!)
    }
    
}
