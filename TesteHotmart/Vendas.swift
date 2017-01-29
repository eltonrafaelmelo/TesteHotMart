//
//  Vendas.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/29/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class Vendas: NSObject {
    
    var idVenda      = ""
    var descricao    = ""
    var data         = ""
    var valorVenda   = ""
    var alerta       = false
    var viewColor    = false
    
    init(fromString idVenda: String, descricao: String, data: String, valorVenda: String, alerta: Bool, viewColor: Bool) {
        self.idVenda = idVenda as String
        self.descricao = descricao as String
        self.data = data as String
        self.valorVenda = valorVenda as String
        self.alerta = alerta
        self.viewColor = viewColor
        super.init()
    }

}
