//
//  VendasDashTableViewController.swift
//  TesteHotmart
//
//  Created by Elton Melo on 30/01/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class VendasDashTableViewController: UITableViewController {
    
    var listaVendas = [Vendas]()
    var mockup = MockupVendas.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        listaVendas = mockup.listaDeVendas()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaVendas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VendasCell", for: indexPath) as! VendasTableViewCell
        
        let venda = vendaNoIndex(index: indexPath as NSIndexPath)
        
        cell.descricao.font = UtilFontes.fontTextNormal(tamanho: 15)
        cell.valor.font = UtilFontes.fontTextBold(tamanho: 15)
        cell.data.font = UtilFontes.fontTextNormal(tamanho: 15)
        cell.data.textColor = UtilColores.ColorCinzaEscuro()
        
        cell.descricao.text = venda.descricao
        cell.valor.text = venda.valorVenda
        cell.data.text = "id \(venda.idVenda) . \(venda.data)"
        cell.icone?.isHidden = venda.alerta == true ? false : true
        cell.view.backgroundColor = venda.viewColor == true ? UIColor.white : UtilColores.ColorCinzaClaro()
        
        return cell
    }
    
    func vendaNoIndex(index: NSIndexPath) -> Vendas {
        let venda = listaVendas[index.row] as Vendas
        return venda
    }
   
}
