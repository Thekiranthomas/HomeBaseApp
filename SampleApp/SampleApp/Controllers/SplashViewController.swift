//
//  SplashViewController.swift
//  SampleApp
//
//  Created by Kiran Thomas on 25/12/18.
//  Copyright © 2018 HomeBase. All rights reserved.
//

import UIKit

class SplashViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(red: 73/255, green: 77/255, blue: 74/255, alpha: 1)
        
        self.addAnimatedLabel()
        self.addlineAnimations()
        
        self.perform(#selector(removeSplashController), with: nil, afterDelay: 5.0)
    }
    
    func addAnimatedLabel() {
        let animatedLabel = UILabel()
        animatedLabel.text = ""
        animatedLabel.font = UIFont(name: "MarkerFelt-Wide", size: 50.0)
        animatedLabel.textColor = UIColor(red: 26/255, green: 228/255, blue: 144/255, alpha: 1.0)
        animatedLabel.textAlignment = .center
        animatedLabel.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(animatedLabel)

        self.view.addConstraint(NSLayoutConstraint(item: animatedLabel, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint(item: animatedLabel, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0))
        
        animatedLabel.setTextWithTypeAnimation(typedText: "HOME BASE", characterDelay: 25)
    }
    
    func addlineAnimations() {
        let linePath = UIBezierPath()
        linePath.move(to: CGPoint(x: self.view.center.x, y: self.view.safeAreaLayoutGuide.layoutFrame.origin.y + 100))
        linePath.addLine(to: CGPoint(x: self.view.bounds.size.width - 20, y: self.view.safeAreaLayoutGuide.layoutFrame.origin.y + 50))
        linePath.addLine(to: CGPoint(x: self.view.bounds.size.width - 20, y: self.view.safeAreaLayoutGuide.layoutFrame.size.height - 20))
        linePath.addLine(to: CGPoint(x: 20 , y: self.view.safeAreaLayoutGuide.layoutFrame.size.height - 20))
        linePath.addLine(to: CGPoint(x: 20 , y: self.view.safeAreaLayoutGuide.layoutFrame.origin.y + 50))
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
