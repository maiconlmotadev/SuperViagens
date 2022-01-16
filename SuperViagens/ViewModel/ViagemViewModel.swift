//
//  ViagemViewModel.swift
//  SuperViagens
//
//  Created by Maicon Mota on 16/01/2022.
//

import Foundation

enum ViagemViewModelType: String {
    case destaques
    case ofertas
    case internacionais
}

protocol ViagemViewModel {
    var tituloSessao: String {get}
    var tipo: ViagemViewModelType {get}
    var viagens: [Viagem] {get set}
    var numeroDeLinhas: Int {get}
       
}


