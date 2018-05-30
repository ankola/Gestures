//
//  SwipeGesture.swift
//  Gesture
//
//  Created by agile on 5/30/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class SwipeGesture: UIViewController {

    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled = true
        
        let swiperight = UISwipeGestureRecognizer(target: self, action: #selector(self.swipegeture))
        swiperight.direction = UISwipeGestureRecognizerDirection.right
        imageView.addGestureRecognizer(swiperight)
        
        let swipeleft = UISwipeGestureRecognizer(target: self, action: #selector(swipegeture))
        swipeleft.direction = UISwipeGestureRecognizerDirection.left
        imageView.addGestureRecognizer(swipeleft)
        
        let swipedown = UISwipeGestureRecognizer(target: self, action: #selector(swipegeture))
        swipedown.direction = UISwipeGestureRecognizerDirection.down
        imageView.addGestureRecognizer(swipedown)
        
        let swipeup = UISwipeGestureRecognizer(target: self, action: #selector(swipegeture))
        swipeup.direction = UISwipeGestureRecognizerDirection.up
        imageView.addGestureRecognizer(swipeup)
        }

    @objc func swipegeture(sender : UISwipeGestureRecognizer) {
        if let swipegeture = sender as? UISwipeGestureRecognizer
        {
            switch swipegeture.direction {
            case UISwipeGestureRecognizerDirection.right:
                imageView.image = UIImage(named: "1")
            case UISwipeGestureRecognizerDirection.left:
                imageView.image = UIImage(named: "2")
            case UISwipeGestureRecognizerDirection.up:
                imageView.image = UIImage(named: "3")
            case UISwipeGestureRecognizerDirection.down:
                imageView.image = UIImage(named: "4")
            default:
                break
            }
        }
    }
}
