//
//  ViewController.swift
//  Swift Problem #1
//
//  Created by Patrick Bellot on 3/3/16.
//  Copyright © 2016 Bell OS. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var greetingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks
        nameTextField.delegate = self
        greetingLabel.hidden = true
    }
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
       
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        greetingLabel.text = textField.text
    }
    
    // MARK: Actions
    @IBAction func setLabelText(sender: UIButton) {
        guard let name = nameTextField.text where !name.isEmpty else {
            return
        }
        greetingLabel.text = name
        greetingLabel.hidden = false
        greetingLabel.text = "Hello, \(name), nice to meet you!"
    }
}