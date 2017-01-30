//
//  MockupMensagens.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/29/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class MockupMensagens: NSObject {
    
    static let sharedInstance = MockupMensagens()
    
    func listaDeMensagens() -> [Mensagem] {
        
        var lista = [Mensagem]()
        
        let mensagen1 = Mensagem(fromString: "Elton Melo", plNome: "E", foto: "elton", alerta: true)
        
        let mensagen2 = Mensagem(fromString: "Pedro Matos", plNome: "P", foto: "", alerta: true)
        
        let mensagen3 = Mensagem(fromString: "Valéria Ciqueira", plNome: "V", foto: "", alerta: false)
        
        let mensagen4 = Mensagem(fromString: "Maria Carol", plNome: "M", foto: "", alerta: false)
        
        let mensagen5 = Mensagem(fromString: "Flávia de Alcantara", plNome: "F", foto: "", alerta: true)
        
        let mensagen6 = Mensagem(fromString: "Sérgio Bruno", plNome: "S", foto: "", alerta: false)
        
        let mensagen7 = Mensagem(fromString: "Carla", plNome: "C", foto: "", alerta: false)
        
        let mensagen8 = Mensagem(fromString: "Manoel Vieira", plNome: "M", foto: "", alerta: false)
        
        let mensagen9 = Mensagem(fromString: "Junior", plNome: "J", foto: "", alerta: false)
        
        let mensagen10 = Mensagem(fromString: "Juliana", plNome: "J", foto: "", alerta: true)
        
        let mensagen11 = Mensagem(fromString: "Leonardo Portugal", plNome: "L", foto: "", alerta: false)
        
        let mensagen12 = Mensagem(fromString: "José Silva", plNome: "J", foto: "", alerta: true)
        
        let mensagen13 = Mensagem(fromString: "Camila", plNome: "C", foto: "", alerta: false)
        
        let mensagen14 = Mensagem(fromString: "Lucas Pereira", plNome: "L", foto: "", alerta: false)
        
        let mensagen15 = Mensagem(fromString: "Paula", plNome: "P", foto: "", alerta: true)
        
        let mensagen16 = Mensagem(fromString: "Gaby", plNome: "G", foto: "", alerta: true)
        
        let mensagen17 = Mensagem(fromString: "Rafael Melo", plNome: "R", foto: "", alerta: false)
        
        let mensagen18 = Mensagem(fromString: "Renata", plNome: "R", foto: "", alerta: false)
        
        let mensagen19 = Mensagem(fromString: "Sandro", plNome: "S", foto: "", alerta: true)
        
        let mensagen20 = Mensagem(fromString: "Luiza", plNome: "L", foto: "", alerta: true)
        
        lista.append(mensagen1)
        lista.append(mensagen2)
        lista.append(mensagen3)
        lista.append(mensagen4)
        lista.append(mensagen5)
        lista.append(mensagen6)
        lista.append(mensagen7)
        lista.append(mensagen8)
        lista.append(mensagen9)
        lista.append(mensagen10)
        lista.append(mensagen11)
        lista.append(mensagen12)
        lista.append(mensagen13)
        lista.append(mensagen14)
        lista.append(mensagen15)
        lista.append(mensagen16)
        lista.append(mensagen17)
        lista.append(mensagen18)
        lista.append(mensagen19)
        lista.append(mensagen20)
        
        return lista
    }

}
