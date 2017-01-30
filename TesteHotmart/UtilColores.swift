//
//  UtilColores.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/29/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//

import UIKit

class UtilColores: NSObject {
    
    class func colorFactory(color: String) -> UIColor{
        return UIColor.colorWithHexString(hexValue: color)
    }
    
    class func colorNavigationBar() -> UIColor{
        return UIColor.colorWithHexString(hexValue: "#249787")
    }
    
    class func ColorWrite() -> UIColor {
        return UIColor.white
    }
    
    class func ColorWrite(alpha: CGFloat) -> UIColor {
        return UIColor.white.withAlphaComponent(alpha)
    }
    
    class func ColorLaranjado() -> UIColor {
        return UIColor.colorWithHexString(hexValue: "#e7ad45")
    }
    
    class func ColorVermelho() -> UIColor {
        return UIColor.colorWithHexString(hexValue: "#d04f2a")
    }
    
    class func ColorRoxo() -> UIColor {
        return UIColor.colorWithHexString(hexValue: "#5f498c")
    }
    
    class func ColorVerde() -> UIColor {
        return UIColor.colorWithHexString(hexValue: "#a3c74b")
    }
    
    class func ColorVermelho2() -> UIColor {
        return UIColor.colorWithHexString(hexValue: "#ce4251")
    }
    
    class func ColorAzul() -> UIColor {
        return UIColor.colorWithHexString(hexValue: "#4982c5")
    }
    
    class func ColorCinzaEscuro() -> UIColor {
        return UIColor.colorWithHexString(hexValue: "#919191")
    }
    
    class func ColorCinzaClaro() -> UIColor {
        return UIColor.colorWithHexString(hexValue: "#f4f4f4")
    }
    
    class func ColorPelaPLNome(letra: String) -> UIColor {
        
        switch letra {
        case "A":
            return ColorAzul()
        case "B":
            return ColorVerde()
        case "C":
            return ColorVermelho2()
        case "D":
            return ColorRoxo()
        case "F":
            return ColorVermelho()
        case "G":
            return ColorLaranjado()
        case "H":
            return ColorAzul()
        case "I":
            return ColorVerde()
        case "J":
            return ColorVermelho2()
        case "L":
            return ColorRoxo()
        case "M":
            return ColorVermelho()
        case "N":
            return ColorLaranjado()
        case "O":
            return ColorAzul()
        case "P":
            return ColorVerde()
        case "Q":
            return ColorVermelho2()
        case "R":
            return ColorRoxo()
        case "S":
            return ColorVermelho()
        case "T":
            return ColorLaranjado()
        case "U":
            return ColorAzul()
        case "V":
            return ColorVerde()
        case "X":
            return ColorVermelho2()
        case "Z":
            return ColorRoxo()
        case "W":
            return ColorVermelho()
        case "Y":
            return ColorLaranjado()
        case "Ç":
            return ColorAzul()
        default:
            break
        }
        
        return ColorAzul()
    }

}
