//
//  UILabelAdditions.swift
//  SampleApp
//
//  Created by Kiran Thomas on 05/01/19.
//  Copyright © 2019 HomeBase. All rights reserved.
//

import UIKit

extension UILabel {
    // Work item sleeps on the thread for the duration specified
    // Perform the work item on the queue with QoS as userInteractive after time interval
    func setTextWithTypeAnimation(typedText: String, characterDelay: TimeInterval = 5.0) {
        let writingTask = DispatchWorkItem { [self = self] in
            for character in typedText {
                DispatchQueue.main.async {
                    self.text!.append(character)
                }
                
                Thread.sleep(forTimeInterval: characterDelay/100)
            }
        }
        
        let queue = DispatchQueue(label: "performTypeAnimation", qos: DispatchQoS.userInteractive)
        queue.asyncAfter(deadline: .now() + 0.05, execute: writingTask)
    }
}
