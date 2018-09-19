//
//  FRTextFieldInput.swift
//  FRTextFieldAnimation
//
//  Created by Farshad Ghafari on 9/18/18.
//  Copyright © 2018 Farshad Ghafari. All rights reserved.
//

import UIKit

@objc public protocol FRTextInputDelegate: class {
    
    @objc optional func textInputDidBeginEditing(textInput: FRTextFieldInput)
    @objc optional func textInputDidEndEditing(textInput: FRTextFieldInput)
    @objc optional func textInputDidChange(textInput: FRTextFieldInput)
    @objc optional func textInputShouldBeginEditing(textInput: FRTextFieldInput) -> Bool
    @objc optional func textInputShouldEndEditing(textInput: FRTextFieldInput) -> Bool
    @objc optional func textInputShouldReturn(textInput: FRTextFieldInput) -> Bool
}


final public class FRTextFieldInput: UITextField {
    
    weak public var textInputDelegate: FRTextInputDelegate?
    open var characterCount: Int = 100
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
        setup()
    }
    
    fileprivate func setup() {
        delegate = self
        
    }
    
}

extension FRTextFieldInput: UITextFieldDelegate {
    
    public func textFieldDidBeginEditing(_ textField: UITextField) {
        textInputDelegate?.textInputDidBeginEditing!(textInput: self)
    }
    
    public func textFieldDidEndEditing(_ textField: UITextField) {
        textInputDelegate?.textInputDidEndEditing!(textInput: self)
    }
    
    public func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard let text = textField.text else { return true }
        let newLength = text.count + string.count - range.length
        return newLength <= characterCount
    }
    
    public func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return textInputDelegate?.textInputShouldBeginEditing!(textInput: self) ?? true
    }
    
    public func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return textInputDelegate?.textInputShouldEndEditing!(textInput: self) ?? true
    }
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textInputDelegate?.textInputShouldReturn!(textInput: self) ?? true
    }
}
