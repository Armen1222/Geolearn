import Foundation
import UIKit

class YTHomeTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleBackgroundView: UIView!
    @IBOutlet weak var titleRoundLabel: UILabel!
    
    var name: String = "" {
        didSet {
            titleLabel.text = name
            if let first = name.characters.first {
                titleRoundLabel.text = String(first)
            }
        }
    }
    
    func setupLayouts() {
        titleRoundLabel.addShadow()
        titleRoundLabel.layer.cornerRadius = titleRoundLabel.bounds.height * 0.5
        titleBackgroundView.layer.cornerRadius = 6
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.setupLayouts()
    }
   
}
