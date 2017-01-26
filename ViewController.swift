import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var introView: UIView!
    @IBOutlet weak var pirateImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupBackground()
        self.setupStyle()
    }

// MARK: - Setup
    func setupStyle() {
        introView.addShadow()
        goButton.addShadow()
    }
    func setupBackground() {
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [UIColor(netHex: 0x55F0B6).cgColor, UIColor(netHex:0x46BDD1).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
    }

}

