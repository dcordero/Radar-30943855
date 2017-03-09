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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSecureTextFieldProgramatically()
        setUpSecureTextFieldFromInterfaceBuilder()
    }
    
    // MARK: - Private
    
    func setUpSecureTextFieldProgramatically() {
        let textField = UITextField(frame: CGRect(x: 100, y: 100, width: 200, height: 70))
        textField.isSecureTextEntry = true
        textField.contentVerticalAlignment = .center
        textField.placeholder = "TextField 1"
        view.addSubview(textField)
    }
    
    func setUpSecureTextFieldFromInterfaceBuilder() {
        secureTextField.contentVerticalAlignment = .center
        secureTextField.isSecureTextEntry = true
        secureTextField.placeholder = "TextField 2"
    }
}

