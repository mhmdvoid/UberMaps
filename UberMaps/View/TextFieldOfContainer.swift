//
//  TextFieldOfContainer.swift
//  UberMaps
//
//  Created by Mohammed mohsen on 5/17/21.
//


// USE ENUM
enum TextColor {
    case pick(phColor: UIColor, txtColor: UIColor)
}

struct TextProperty {
    let placeholder: String
    let textColor: TextColor
    let fontSize: CGFloat
}
import UIKit
//  never forget it has already an aPI built for it use
// API -> create an extensible aPI use the oldest, placeColor: color, shape w/ and so on !
class TextFieldOfContainer: UITextField {

    
    // now we can create a proper interface to this textField;
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(property: TextProperty) {
        self.init(frame: .zero)
        self.borderStyle = .none
          // i'm just moving code around ! no reusability no extensibility !
        placeholderAttribute(attrs: property)
        // Don't look ahead bruh You need to do so !;
    }
    
    final public func placeholderAttribute(attrs: TextProperty) {
        switch attrs.textColor {
        case .pick(phColor: let phColor, txtColor: let txtColo):
            self.attributedPlaceholder = NSAttributedString(string: attrs.placeholder   , attributes: [.foregroundColor: phColor])
            self.textColor = txtColo
        }
        
        font = UIFont.systemFont(ofSize: attrs.fontSize)

    }

}
