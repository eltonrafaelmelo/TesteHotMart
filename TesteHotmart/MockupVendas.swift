//
//  MockupVendas.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/29/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class MockupVendas: NSObject {
    
    static let sharedInstance = MockupVendas()
    
    func listaDeVendas() -> [Vendas] {
        var lista = [Vendas]()
        
        let venda1 = Vendas(fromString: "1", descricao: "Como decorar uma festa infantil maravilhosa...", data: "11/01/2016",valorVenda: "R$ 1.035,00",alerta: true,viewColor: true)
        
        let venda2 = Vendas(fromString: "2", descricao: "Como decorar uma festa Adulta...", data: "12/01/2016",valorVenda: "R$ 5.035,00",alerta: true,viewColor: false)
        
        let venda3 = Vendas(fromString: "3", descricao: "Como decorar uma festa de Casamento...", data: "13/01/2016",valorVenda: "R$ 10.035,00",alerta: false,viewColor: true)
        
        let venda4 = Vendas(fromString: "4", descricao: "Como decorar uma festa de formatura...", data: "14/01/2016",valorVenda: "R$ 1.135,00",alerta: false,viewColor: false)
        
        let venda5 = Vendas(fromString: "5", descricao: "Como decorar uma festa de 15 anos...", data: "15/01/2016",valorVenda: "R$ 1.235,00",alerta: true,viewColor: true)
        
        let venda6 = Vendas(fromString: "6", descricao: "Como decorar uma festa a fantasia...", data: "16/01/2016",valorVenda: "R$ 1.735,00",alerta: false,viewColor: false)
        
        let venda7 = Vendas(fromString: "7", descricao: "Como decorar uma festa de natal...", data: "17/01/2016",valorVenda: "R$ 1.935,00",alerta: false,viewColor: true)
        
        let venda8 = Vendas(fromString: "8", descricao: "Como decorar uma festa ano novo...", data: "18/01/2016",valorVenda: "R$ 1.435,00",alerta: true,viewColor: false)
        
        let venda9 = Vendas(fromString: "9", descricao: "Como decorar uma festa de empresa...", data: "19/01/2016",valorVenda: "R$ 9.035,00",alerta: true,viewColor: true)
        
        let venda10 = Vendas(fromString: "10", descricao: "Como decorar uma festa top...", data: "20/01/2016",valorVenda: "R$ 4.035,00",alerta: true,viewColor: false)
        
        let venda11 = Vendas(fromString: "11", descricao: "Como decorar uma festa junina...", data: "21/01/2016",valorVenda: "R$ 6.035,00",alerta: false,viewColor: true)
        
        let venda12 = Vendas(fromString: "12", descricao: "Como decorar uma festa em boate...", data: "22/01/2016",valorVenda: "R$ 7.035,00",alerta: true,viewColor: false)
        
        let venda13 = Vendas(fromString: "13", descricao: "Como decorar uma festa num navio...", data: "23/01/2016",valorVenda: "R$ 5.035,00",alerta: false,viewColor: true)
        
        let venda14 = Vendas(fromString: "14", descricao: "Como decorar uma festa da cerveja...", data: "24/01/2016",valorVenda: "R$ 2.035,00",alerta: false,viewColor: false)
        
        let venda15 = Vendas(fromString: "15", descricao: "Como decorar um festival de sorvete...", data: "25/01/2016",valorVenda: "R$ 1.035,30",alerta: true,viewColor: true)
        
        let venda16 = Vendas(fromString: "16", descricao: "Como decorar um festival de pizza...", data: "26/01/2016",valorVenda: "R$ 1.035,50",alerta: true,viewColor: false)
        
        let venda17 = Vendas(fromString: "17", descricao: "Como decorar um festival de massas...", data: "27/01/2016",valorVenda: "R$ 1.035,70",alerta: false,viewColor: true)
        
        lista.append(venda1)
        lista.append(venda2)
        lista.append(venda3)
        lista.append(venda4)
        lista.append(venda5)
        lista.append(venda6)
        lista.append(venda7)
        lista.append(venda8)
        lista.append(venda9)
        lista.append(venda10)
        lista.append(venda11)
        lista.append(venda12)
        lista.append(venda13)
        lista.append(venda14)
        lista.append(venda15)
        lista.append(venda16)
        lista.append(venda17)
        
        return lista
    }
    
}
