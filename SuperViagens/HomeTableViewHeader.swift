//
//  HomeTableViewHeader.swift
//  SuperViagens
//
//  Created by Maicon Mota on 14/01/2022.
//

import UIKit

class HomeTableViewHeader: UIView {

    
    @IBOutlet var tituloLabel: UILabel!
    @IBOutlet var headerView: UIView!
    @IBOutlet var bannerImageView: UIImageView!
    
    func configuraView() {
        headerView.backgroundColor = UIColor.systemTeal
    }
}
