//
//  CustomTabBarController.swift
//  SampleApp
//
//  Created by Kiran Thomas on 22/12/18.
//  Copyright © 2018 HomeBase. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    @IBInspectable var startingIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectedIndex = startingIndex
    }
}
