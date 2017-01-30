//
//  TableViewController.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/28/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit
import KYDrawerController

class TableViewController: UITableViewController {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var labelNome: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var labelDash: UILabel!
    @IBOutlet weak var labelVendas: UILabel!
    @IBOutlet weak var labelProdutos: UILabel!
    @IBOutlet weak var labelAfiliados: UILabel!
    @IBOutlet weak var labelCountAfiliados: UILabel!
    @IBOutlet weak var labelMensagem: UILabel!
    @IBOutlet weak var labelCountMensagem: UILabel!
    @IBOutlet weak var labelNotificacoes: UILabel!
    @IBOutlet weak var labelCountNotificacoes: UILabel!
    @IBOutlet weak var labelMinhaConta: UILabel!
    @IBOutlet weak var labelSobre: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tratandoFonteLabels()
        
        photo.layer.cornerRadius = photo.frame.size.height / 2
        photo.clipsToBounds = true
        photo.layer.masksToBounds = true

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let aVariable = appDelegate.drawerController
        
        switch indexPath.row {
        case 1:
            appDelegate.abrirTela = "HOME"
            break
        case 2:
            appDelegate.abrirTela = "VENDAS"
            break
        case 5:
            appDelegate.abrirTela = "MENSAGENS"
            break
        case 6:
            appDelegate.abrirTela = "HOME"
            break
        default:
            break
        }
        
        switch indexPath.row {
        case 1,2,5,6:
            aVariable?.setDrawerState(KYDrawerController.DrawerState.closed, animated: true)
            break
        default:
            break
        }
        
    }

    // MARK: - Table view data source
    
    func tratandoFonteLabels(){
        labelNome.font = UtilFontes.fontTextBold(tamanho: 23)
        labelEmail.font = UtilFontes.fontTextRegular(tamanho: 15)
        
        labelDash.font = UtilFontes.fontTextRegular(tamanho: 15)
        labelVendas.font = UtilFontes.fontTextRegular(tamanho: 15)
        labelProdutos.font = UtilFontes.fontTextRegular(tamanho: 15)
        labelAfiliados.font = UtilFontes.fontTextRegular(tamanho: 15)
        labelCountAfiliados.font = UtilFontes.fontTextBold(tamanho: 15)
        labelMensagem.font = UtilFontes.fontTextRegular(tamanho: 15)
        labelCountMensagem.font = UtilFontes.fontTextBold(tamanho: 15)
        labelNotificacoes.font = UtilFontes.fontTextRegular(tamanho: 15)
        labelCountNotificacoes.font = UtilFontes.fontTextBold(tamanho: 15)
        labelMinhaConta.font = UtilFontes.fontTextRegular(tamanho: 15)
        labelSobre.font = UtilFontes.fontTextRegular(tamanho: 15)
    }


    
    

}
