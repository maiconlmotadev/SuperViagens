//
//  ViagemDestaqueViewModel.swift
//  SuperViagens
//
//  Created by Maicon Mota on 16/01/2022.
//

import Foundation

class ViagemDestaqueViewModel: ViagemViewModel {
    
    var tituloSessao: String{
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init (_ viagens: [Viagem]) {
        self.viagens = viagens
    }
    
}


