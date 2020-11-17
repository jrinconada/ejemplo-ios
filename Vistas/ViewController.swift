

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gretting: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gretting.text = "¿Cómo va todo?"
    }

    @IBAction func buttonTapped(_ sender: Any) {
        gretting.text = "Has pulsado el botón"
        
        toggle()
    }
    
    func toggle() {
        if imageView.alpha == 0 {
            showImage()
        } else {
            hideImage()
        }
    }
    
    @IBAction func goToForm(_ sender: Any) {
        if imageView.alpha != 0 {
            performSegue(withIdentifier: "goToForm", sender: nil)
        }
    }
    
    func showImage() {
        imageView.alpha = 0
        UIView.animate(withDuration: 2) {
            self.imageView.alpha = 1
        }
    }
    
    func hideImage() {
        UIView.animate(withDuration: 1, animations: {
            self.imageView.bounds = CGRect(x: self.imageView.center.x, y: self.imageView.center.y, width: 0, height: 0)
        }) { (isAnimated) in
            self.imageView.alpha = 0
        }
    }
}

