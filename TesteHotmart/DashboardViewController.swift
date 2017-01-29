//
//  DashboardViewController.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/28/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit
import KYDrawerController

class DashboardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func teste(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let aVariable = appDelegate.drawerController
        
        aVariable?.setDrawerState(KYDrawerController.DrawerState.opened, animated: true)
    }
    
    @IBAction func openMenu(_ sender: Any) {
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let aVariable = appDelegate.drawerController
        
        aVariable?.setDrawerState(KYDrawerController.DrawerState.opened, animated: true)
    }
    
    
//    func drawerController(_ drawerController: KYDrawerController, stateChanged state: KYDrawerController.DrawerState) {
//        
//
//        drawerController.setDrawerState(KYDrawerController.DrawerState.opened, animated: true)
//
//        
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
