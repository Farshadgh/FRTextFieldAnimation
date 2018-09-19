//
//  ViewController.swift
//  FRTextFieldExample
//
//  Created by Farshad Ghafari 
//  Copyright © 2018 Farshad Ghafari. All rights reserved.
//

import UIKit
import FRTextFieldAnimation

class ViewController: UIViewController {
    
    @IBOutlet weak var textView: FRTextFieldAnimation!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.delegate = self
        textView.placeHolderFont = UIFont.boldSystemFont(ofSize: 20)
        textView.textFieldFont = UIFont.boldSystemFont(ofSize: 15)
        textView.placeHolderTitle = "Phone number"
        textView.placeHolderColor = UIColor.red
        textView.lineColor = UIColor.purple
        textView.textColor = UIColor.darkGray
        textView.textLimit = 11
        textView.keyboardType = .numberPad // You can change keyboard type
        
        let screenTap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        self.view.addGestureRecognizer(screenTap)
        
    }
    
    @objc func dismissKeyboard() {
        textView.endEditing(true)
        print(textView.text)
    }

}


extension ViewController: AnimatedTextInputDelegate {
    func animatedTextInputDidEndEditing(animatedTextInput: FRTextFieldInput) {
        //code
    }
    
    func animatedTextInputDidBeginEditing(animatedTextInput: FRTextFieldInput) {
        //code
    }
    
    func animatedTextInputDidChange(animatedTextInput: FRTextFieldInput) {
        //code
    }
    
    func animatedTextInputShouldReturn(animatedTextInput: FRTextFieldInput) -> Bool {
        animatedTextInput.resignFirstResponder()
        return true
    }
    
    func animatedTextInputShouldBeginEditing(animatedTextInput: FRTextFieldInput) -> Bool {
        return true
    }
    
    func animatedTextInputShouldEndEditing(animatedTextInput: FRTextFieldInput) -> Bool {
        return true
    }
}
