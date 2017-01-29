//
//  VendasViewController.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/29/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit
import KYDrawerController

class VendasViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var listaVendas = [Vendas]()
    var mockup = MockupVendas.sharedInstance

    @IBOutlet weak var tableViewVendas: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaVendas = mockup.listaDeVendas()
        tableViewVendas.delegate = self
        tableViewVendas.dataSource = self

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func touchOpenMenu(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let aVariable = appDelegate.drawerController
        
        aVariable?.setDrawerState(KYDrawerController.DrawerState.opened, animated: true)
    }
    
    // MARK: - TableView
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 115
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaVendas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VendasTableViewCell", for: indexPath) as! VendasTableViewCell
        
        let venda = vendaNoIndex(index: indexPath as NSIndexPath)
        
        cell.descricao.text = venda.descricao
        cell.valor.text = venda.valorVenda
        cell.data.text = "id \(venda.idVenda) - \(venda.data)"
        cell.icone?.isHidden = venda.alerta == true ? false : true
        cell.view.backgroundColor = venda.viewColor == true ? UIColor.white : UIColor.gray
        
        return cell
    }

    func vendaNoIndex(index: NSIndexPath) -> Vendas {
        let venda = listaVendas[index.row] as Vendas
        return venda
    }

}
