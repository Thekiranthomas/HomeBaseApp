//
//  UIColorAdditions.swift
//  SampleApp
//
//  Created by Kiran Thomas on 05/01/19.
//  Copyright © 2019 HomeBase. All rights reserved.
//

import UIKit

extension UIColor {
    class func generateRandomColor() -> UIColor {
        let hue = CGFloat((arc4random() % 100)) / 100
        let saturation = CGFloat((arc4random() % 100)) / 100
        let brightness = CGFloat((arc4random() % 100)) / 100
        
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: 1.0)
    }
}
