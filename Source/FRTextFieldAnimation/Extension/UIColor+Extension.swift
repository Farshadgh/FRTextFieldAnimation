//
//  UIColor+Extension.swift
//  FRTextFieldAnimation
//
//  Created by Farshad Ghafari on 9/18/18.
//  Copyright © 2018 Farshad Ghafari. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func fromRGB(_ rgb:UInt32) -> UIColor {
        return UIColor(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
        
    }
}

