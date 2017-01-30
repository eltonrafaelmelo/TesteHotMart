//
//  Mensagem.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/29/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class Mensagem: NSObject {
    
    var nome      = ""
    var plNome    = ""
    var foto      = ""
    var alerta    = false
    
    init(fromString nome: String, plNome: String, foto: String, alerta: Bool) {
        self.nome = nome as String
        self.plNome = plNome as String
        self.foto = foto as String
        self.alerta = alerta
        super.init()
    }
    
}
