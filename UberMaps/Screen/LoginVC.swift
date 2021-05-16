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
    
    // MARK: Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
            
        view.backgroundColor = .uberBackground
        setupUberTitle()
    }
    
    fileprivate func setupUberTitle() {
        view.addSubview(uberTitle)
        
        uberTitle.anchor([.top(view, 0, true)])
        uberTitle.centerX(in: view)
    }
    
    // change the status bar style for this controller.
    override var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}

