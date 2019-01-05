//
//  SplashViewController.swift
//  SampleApp
//
//  Created by Kiran Thomas on 25/12/18.
//  Copyright © 2018 HomeBase. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    @IBOutlet weak var animatedLabel: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.animatedLabel?.setTextWithTypeAnimation(typedText: "HOME BASE", characterDelay: 25)
        self.addlineAnimations()
        self.perform(#selector(removeSplashController), with: nil, afterDelay: 5.0)
    }
    
    func addlineAnimations() {
        let linePath = UIBezierPath()
        linePath.move(to: CGPoint(x: self.view.center.x + 20, y: self.view.center.y))
        linePath.addLine(to: CGPoint(x: self.view.bounds.size.width , y: self.view.center.y + 50))
        linePath.addLine(to: CGPoint(x: self.view.bounds.size.width , y: self.view.center.y + 200))
        linePath.addLine(to: CGPoint(x: 40 , y: self.view.center.y + 200))
        linePath.addLine(to: CGPoint(x: 40 , y: self.view.center.y + 50))
        linePath.close()
        
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        animation.fromValue = 0
        animation.duration = 2.5
        
        let drawColour = UIColor(red: 1, green: 0, blue: 0, alpha: 0.5)
        let fillColour = UIColor(red: 0.7, green: 0.7, blue: 0.7, alpha: 0.5)
        let layer = CAShapeLayer()
        layer.fillColor = fillColour.cgColor
        layer.strokeColor = drawColour.cgColor
        layer.lineWidth = 5.0
        layer.path = linePath.cgPath
        
        layer.add(animation, forKey: "lineStroke")
        self.view.layer.addSublayer(layer)
    }
    
    @objc func removeSplashController() {
        let storyBoard = UIStoryboard(name: "HomeBase", bundle: nil)
        let tabBarController = storyBoard.instantiateViewController(withIdentifier: "HomeBaseTabController")
        
        UIApplication.shared.delegate?.window??.rootViewController = tabBarController
    }
}
