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
    
    @IBOutlet var bannerView: UIView!
    
    func configuraView() {
        headerView.backgroundColor = UIColor.systemTeal
        
        bannerView.layer.cornerRadius = 10
        bannerView.layer.masksToBounds = true
        
        headerView.layer.cornerRadius = 500
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
