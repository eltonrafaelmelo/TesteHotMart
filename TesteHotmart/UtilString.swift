//
//  UtilString.swift
//  TesteHotmart
//
//  Created by Elton Melo on 1/30/17.
//  Copyright © 2017 Elton Melo. All rights reserved.
//


import UIKit

//Internacionalização
extension String {
    func localizedWithComment(comment:String) -> String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: comment)
    }
}
