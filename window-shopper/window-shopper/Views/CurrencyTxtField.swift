//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Patrik Kemeny on 19/3/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import UIKit

class CurrencyTxtField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib() // when the app is loaded this will load  during the interface builder
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        //placeholder
        //i have acces bc it s property of the textfield
        //security check/initialization never empty == Good practice
//        if placeholder == nil {
//            placeholder = " " // we need to initialize it with empty string otherwise i can not set up the color
//        }
//        let place = NSAttributedString(string: placeholder!, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
//        attributedPlaceholder = place
//        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//    }
//placeholder! it unwrraping so it must to have data in it. This is why i set it up to empty string
      
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        }
}
