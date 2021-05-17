//
//  LoginVC.swift
//  UberMaps
//
//  Created by Mohammed mohsen on 5/16/21.
//

import UIKit

class LoginVC: UIViewController {

    
    // MARK: Properties
    private let uberTitle: UILabel = {
        let uberLabel = UILabel()
        uberLabel.text = "UBER"
        uberLabel.textColor = UIColor(white: 1, alpha: 0.8)
        uberLabel.font = UIFont(name: "Avenir-Light", size: 36)
        return uberLabel
    }()
    
    private let passtxt: TextFieldOfContainer = {
        let pass = TextFieldOfContainer(property: .init(placeholder: "Password", textColor: .pick(phColor: .lightGray, txtColor: .white), fontSize: 16))
        pass.isSecureTextEntry = true
        return pass
    }()
    private let emailContainer = TextFieldContainer(textField: .init(property: .init(placeholder: "Email", textColor: .pick(phColor: .lightGray, txtColor: .white), fontSize: 16)), shape: #imageLiteral(resourceName: "ic_mail_outline_white_2x") )
    private lazy var passwordContainer = TextFieldContainer(textField: passtxt, shape: #imageLiteral(resourceName: "ic_lock_outline_white_2x"))
    
    // MARK: Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .uberBackground
        setupUberTitle()
    }
    
    fileprivate func setupUberTitle() {
        view.addSubview(uberTitle)
                
        uberTitle.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        
        uberTitle.centerX(inView: view)
        vStackForm()
    }
    
    fileprivate func vStackForm() {
        let vStack = UIStackView(arrangedSubviews: [emailContainer, passwordContainer])
        view.addSubview(vStack)
        
        vStack.axis = .vertical
        vStack.spacing = 15
        vStack.distribution = .fillEqually
        vStack.anchor(top: uberTitle.bottom, leading: view.safeAreaLayoutGuide.leadingAnchor,  right: view.safeAreaLayoutGuide.trailingAnchor, paddingBottom: 10, height: 120)
    }
    // change the status bar style for this controller.
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}

// Reusability -> code distribution, inheritance, composition, inheritance means create your own reusable component of that object; composition two things have same base;
// i will create one solid UIView; that has composition inside of it so that we have better things;  inside of it right ?
// textField(.left(view.


