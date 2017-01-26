import Foundation
import UIKit
extension UIView {
    func addShadow() {
        self.layer.cornerRadius = 6
        self.layer.shadowOffset = CGSize(width: 0, height: 2)
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
    }
}
