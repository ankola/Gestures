//
//  PinchGesture.swift
//  Gesture
//
//  Created by agile on 5/30/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class PinchGesture: UIViewController {
    
    @IBOutlet var objima: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        objima.isUserInteractionEnabled = true
        
        let pinchr = UIPinchGestureRecognizer(target: self, action: #selector(self.fpinch))
        objima.addGestureRecognizer(pinchr)
    }
    
    @objc func fpinch(sender : UIPinchGestureRecognizer) {
        sender.view?.transform = (sender.view?.transform.scaledBy(x: sender.scale, y: sender.scale))!
        sender.scale = 1.0
    }

}
