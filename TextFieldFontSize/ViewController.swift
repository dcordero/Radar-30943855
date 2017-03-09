//
//  ViewController.swift
//  TextFieldFontSize
//
//  Created by David Cordero on 09.03.17.
//  Copyright © 2017 David Cordero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var secureTextField: UITextField!
    @IBOutlet weak var nonSecureTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSecureTextFieldProgramatically()
        setUpNonSecureTextFieldProgramatically()
        setUpSecureTextFieldFromInterfaceBuilder()
        setUpNonSecureTextFieldFromIntefaceBuilder()
    }
    
    // MARK: - Private
    
    private var attributes = [
        NSFontAttributeName: UIFont.systemFont(ofSize: 30)
    ]
    
    func setUpSecureTextFieldProgramatically() {
        let secureTextField = UITextField(frame: CGRect(x: 100, y: 100, width: 1700, height: 70))
        secureTextField.isSecureTextEntry = true
        secureTextField.attributedPlaceholder = NSAttributedString(string: "Secure UITextField programatically created", attributes: attributes)
        
        view.addSubview(secureTextField)
    }
    
    func setUpNonSecureTextFieldProgramatically() {
        let nonSecureTextField = UITextField(frame: CGRect(x: 100, y: 200, width: 1700, height: 70))
        nonSecureTextField.attributedPlaceholder = NSAttributedString(string: "Non Secure UITextField programatically created", attributes: attributes)
        
        view.addSubview(nonSecureTextField)
    }
    
    func setUpSecureTextFieldFromInterfaceBuilder() {
        secureTextField.isSecureTextEntry = true
        secureTextField.attributedPlaceholder = NSAttributedString(string: "Secure UITextField created from Interface Builder", attributes: attributes)
    }
    
    func setUpNonSecureTextFieldFromIntefaceBuilder() {
        nonSecureTextField.attributedPlaceholder = NSAttributedString(string: "Non Secure UITextField created from Interface Builder", attributes: attributes)
    }
}

