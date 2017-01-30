//
//  FactoryStoryboard.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/30/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class FactoryStoryboard: NSObject {
    
    class func storyboardMain() -> UIStoryboard {
        return UIStoryboard(name: "Main", bundle: nil)
    }
}
