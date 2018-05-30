//
//  LongPressGesture.swift
//  Gesture
//
//  Created by agile on 5/30/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class LongPressGesture: UIViewController {
    
    @IBOutlet var imglong: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imglong.isUserInteractionEnabled = true
        
        let longpress = UILongPressGestureRecognizer(target: self, action: #selector(self.lngpr))
        imglong.addGestureRecognizer(longpress)
        
    }
    
    
    @objc func lngpr() {
        if imglong.image == UIImage(named: "3"){
            imglong.image = UIImage(named: "4")
        }
        else{
            imglong.image = UIImage(named: "3")
        }
    }
}
