//
//  ViewController.swift
//  SuperViagens
//
//  Created by Maicon Mota on 14/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var viagensTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
    
    }
}



extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = "Viage hoje conosco! \(indexPath.row)"

        return cell
    }
}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("HomeTableViewHeader", owner: self, options: nil)?.first as? HomeTableViewHeader
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
}
