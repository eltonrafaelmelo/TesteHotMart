//
//  MensagensViewController.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/29/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit
import KYDrawerController

class MensagensViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var mensagensCollection: UICollectionView!
    @IBOutlet weak var buttonCount: UIBarButtonItem!
    
    var listaMensagens = [Mensagem]()
    var mockup = MockupMensagens.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaMensagens = mockup.listaDeMensagens()
        mensagensCollection.delegate = self
        mensagensCollection.dataSource = self
        // Do any additional setup after loading the view.
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
    
    // MARK: - CollectionView
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaMensagens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MensagemCollectionViewCell", for: indexPath) as? MensagemCollectionViewCell
        
        let mensagem = mensagemNoIndex(index: indexPath as NSIndexPath)
        
        cell?.foto.layer.cornerRadius = (cell?.foto.frame.size.height)! / 2
        cell?.foto.clipsToBounds = true
        cell?.foto.layer.masksToBounds = true
        
        cell?.viewNome.layer.cornerRadius = (cell?.viewNome.frame.size.height)! / 2
        cell?.viewNome.clipsToBounds = true
        cell?.viewNome.layer.masksToBounds = true
        
        cell?.nome.text = mensagem.nome
        cell?.icone.isHidden = mensagem.alerta == true ? false : true
        cell?.plNomeLabel.text = mensagem.plNome
        if mensagem.foto.isEmpty {
            cell?.foto.isHidden = true
            cell?.viewNome.isHidden = false
            cell?.viewNome.backgroundColor = UtilColores.ColorPelaPLNome(letra: mensagem.plNome)
        } else {
            cell?.foto.isHidden = false
            cell?.viewNome.isHidden = true
        }
        
        return cell!
    }
    
    func mensagemNoIndex(index: NSIndexPath) -> Mensagem {
        let menagem = listaMensagens[index.row] as Mensagem
        return menagem
    }
    
}
