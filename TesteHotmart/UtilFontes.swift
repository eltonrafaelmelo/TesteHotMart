//
//  UtilFontes.swift
//  TesteHotmart
//
//  Created by Elton Melo on 30/01/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class UtilFontes: NSObject {
    
    class func fontTextRegular(tamanho:CGFloat) -> UIFont {
//        return UIFont(name: "HelveticaNeue-Regular", size: tamanho)!
        return UIFont(name: "Helvetica", size: tamanho)!
    }
    
    class func fontTextNormal(tamanho:CGFloat) -> UIFont {
        return UIFont(name: "Helvetica-Light", size: tamanho)!
    }
    
    class func fontTextBold(tamanho:CGFloat) -> UIFont {
        return UIFont(name: "Helvetica-Bold", size: tamanho)!
    }

}
