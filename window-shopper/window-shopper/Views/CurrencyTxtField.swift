//
//  CurrencyTxtField.swift
//  window-shopper
//
//  Created by Aron van Groningen on 17/11/2018.
//  Copyright © 2018 Aron van Groningen. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTxtField: UITextField {

    override func prepareForInterfaceBuilder() {
      customizeView()
    }
  
    override func awakeFromNib() {
      super.awakeFromNib()
      customizeView()
    }
  
  
    func customizeView(){
      backgroundColor = #colorLiteral(red: 0.9961728454, green: 0.9902502894, blue: 1, alpha: 0.25)
      layer.cornerRadius = 5.0
      textAlignment = .center
      
      if let p = placeholder {
        let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
        attributedPlaceholder = place
        textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
      }
    }
}
