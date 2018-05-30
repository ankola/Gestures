//
//  TapGesture.swift
//  Gesture
//
//  Created by agile on 5/30/18.
//  Copyright © 2018 agile. All rights reserved.
//

import UIKit

class TapGesture: UIViewController {

    @IBOutlet var tapview: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tapGesture()
    }
    
    func tapGesture() {
        let singleTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleSingleTapGesture))
        tapview.addGestureRecognizer(singleTapGestureRecognizer)
        
        let doubleTapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleDoubleTapGesture))
        doubleTapGestureRecognizer.numberOfTapsRequired = 2
        tapview.addGestureRecognizer(doubleTapGestureRecognizer)
        
        singleTapGestureRecognizer.require(toFail: doubleTapGestureRecognizer)
        
    }
    
    @objc func handleDoubleTapGesture(tabgesturerecognizer : UITapGestureRecognizer) {
        //print(tabgesturerecognizer.view?.tag)
        if tapview.backgroundColor == UIColor.cyan {
            tapview.backgroundColor = UIColor.darkGray
            tapview.frame = CGRect(x: tapview.frame.origin.x, y: tapview.frame.origin.y, width: 300, height: 300);
        }
        else{
            tapview.backgroundColor = UIColor.cyan
            tapview.frame = CGRect(x: tapview.frame.origin.x, y: tapview.frame.origin.y, width: 300, height: 300);
        }
    }
    
    
    @objc func handleSingleTapGesture(_ tapGestureRecognizer:UITapGestureRecognizer)
    {
        if tapview.backgroundColor == UIColor.black {
            tapview.backgroundColor = UIColor.red
            tapview.frame = CGRect(x: tapview.frame.origin.x, y: tapview.frame.origin.y, width: 100, height: 100);
        }
        else{
            tapview.backgroundColor = UIColor.black
            tapview.frame = CGRect(x: tapview.frame.origin.x, y: tapview.frame.origin.y, width: 50, height: 50);
        }
    }

}
