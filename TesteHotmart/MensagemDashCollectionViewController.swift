//
//  MensagemDashCollectionViewController.swift
//  TesteHotmart
//
//  Created by Elton Melo on 30/01/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class MensagemDashCollectionViewController: UICollectionViewController {
    
    var listaMensagens = [Mensagem]()
    var mockup = MockupMensagens.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        listaMensagens = mockup.listaDeMensagens()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return listaMensagens.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MensagemCell", for: indexPath) as? MensagemCollectionViewCell
        
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

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
