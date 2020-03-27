//
//  Wage.swift
//  window-shopper
//
//  Created by Gustavo Buoro Branco de Souza on 27/03/20.
//  Copyright © 2020 Gustavo Buoro Branco de Souza. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        if wage > 0 {
            return Int(ceil(price / wage))
        } else {
            return 999999999999
        }
    }
}
