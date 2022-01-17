//
//  ViagemTableViewCell.swift
//  SuperViagens
//
//  Created by Maicon Mota on 15/01/2022.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {

    
    @IBOutlet var backgroundViewCell: UIView!
    @IBOutlet var viagemImage: UIImageView!
    @IBOutlet var tituloViagemLabel: UILabel!
    @IBOutlet var subtituloViagemLabel: UILabel!
    @IBOutlet var diariaViagemLabel: UILabel!
    @IBOutlet var precoSemDescontoLabel: UILabel!
    @IBOutlet var precoViagemLabel: UILabel!
    @IBOutlet var statusCancelamentoViagemLabel: UILabel!
    
    func configuraCelula(_ viagem: Viagem?) {
        
        viagemImage.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subtituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0)"
        
        let atributoString: NSMutableAttributedString = NSMutableAttributedString (string: "R$ \(viagem?.precoSemDesconto ?? 0)")
        atributoString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0 , atributoString.length))
        precoSemDescontoLabel.attributedText = atributoString
        
        if let numeroDeDias = viagem?.diaria, let numeroDeHospedes = viagem?.hospedes {
            let diarias = numeroDeDias == 1 ? "Diária" : "Diárias"
            let hospedes = numeroDeHospedes == 1 ? "Pessoa" : "Pessoas"
            
            diariaViagemLabel.text = "\(numeroDeDias) \(diarias) - \(numeroDeHospedes) \(hospedes)"
        }
        
        
        
    }
    
}
