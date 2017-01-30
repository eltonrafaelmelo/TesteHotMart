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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photo.layer.cornerRadius = photo.frame.size.height / 2
        photo.clipsToBounds = true
        photo.layer.masksToBounds = true

        //    _photo.layer.cornerRadius = _photo.frame.size.width / 2;

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let aVariable = appDelegate.drawerController
        
//        aVariable?.setDrawerState(KYDrawerController.DrawerState.closed, animated: true)
        
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

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 9
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
