//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Patrik Kemeny on 19/3/18.
//  Copyright © 2018 Patrik Kemeny. All rights reserved.
//

import UIKit

@IBDesignable //i want this changes show in interface builder

class CurrencyTxtField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLbl = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLbl.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 0.8026808647)
        currencyLbl.textAlignment = .center
        currencyLbl.textColor = #colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 1)
        currencyLbl.layer.cornerRadius = 5.0
        currencyLbl.clipsToBounds = true
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        currencyLbl.text = formatter.currencySymbol
        addSubview(currencyLbl)
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    
    func customizeView() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        clipsToBounds = true
        textAlignment = .center
        if let p = placeholder{
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
    }
    
    
    
//
//    override func awakeFromNib() {
//        super.awakeFromNib() // when the app is loaded this will load  during the interface builder
//        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
//        layer.cornerRadius = 5.0
//        textAlignment = .center
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
      
//        if let p = placeholder{
//            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
//            attributedPlaceholder = place
//            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        }
//        }

