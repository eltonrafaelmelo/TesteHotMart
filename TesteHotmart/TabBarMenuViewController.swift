//
//  TabBarMenuViewController.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/28/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class TabBarMenuViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        switch appDelegate.abrirTela {
        case "HOME":
            self.selectedIndex = 0;
            break
        case "VENDAS":
            self.selectedIndex = 1;
            break
        case "MENSAGENS":
            self.selectedIndex = 2;
            break
        default:
            break
            
        }
        
    }
    
}
