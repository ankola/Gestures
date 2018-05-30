//
//  PanGesture.swift
//  Gesture
//
//  Created by agile on 5/30/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class PanGesture: UIViewController {
    
    @IBOutlet var imageView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled = true

        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(self.panGesture))
        self.imageView.addGestureRecognizer(panGesture)
        
    }

    
    @objc func panGesture(sender: UIPanGestureRecognizer){
        let point = sender.location(in: view)
        let panGesture = sender.view
        panGesture?.center = point
        print(point)
    }
    
}
