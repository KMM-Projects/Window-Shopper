//
//  wage.swift
//  window-shopper
//
//  Created by Patrik Kemeny on 19/3/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        //forWage name for parameter, wage actual parameter
        //if 250.3 / 15.5 = 16.1694883 = i want result rounded up to 17 bc 17 garantee the purchace
        return Int(ceil(price / wage))
    }
    
    
}

