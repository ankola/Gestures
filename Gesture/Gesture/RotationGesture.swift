
import UIKit

class RotationGesture: UIViewController {
    
    @IBOutlet var imageView : UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.isUserInteractionEnabled = true
        
        let rotateGesture = UIRotationGestureRecognizer(target: self, action: #selector(self.rotateGesture))
        
        self.imageView.addGestureRecognizer(rotateGesture)
    }
    
    @objc func rotateGesture(sender: UIRotationGestureRecognizer){
        sender.view?.transform = (sender.view?.transform)!.rotated(by: sender.rotation)
        sender.rotation = 0
        print("rotate gesture")
    }

}
