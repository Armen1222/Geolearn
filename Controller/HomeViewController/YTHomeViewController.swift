import Foundation
import UIKit

class YTHomeViewController: UIViewController , UITableViewDataSource , UITableViewDelegate  {
    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupBackground()
        tableView.register(UINib.init(nibName: "cell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    @IBAction func didPressBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    // MARK: - Setup
    func setupBackground() {
        let gradient = CAGradientLayer()
        gradient.frame = self.view.bounds
        gradient.colors = [UIColor(netHex: 0x55F0B6).cgColor, UIColor(netHex:0x46BDD1).cgColor]
        self.view.layer.insertSublayer(gradient, at: 0)
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 30
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? YTHomeTableViewCell
        
        return cell!
    }

}
