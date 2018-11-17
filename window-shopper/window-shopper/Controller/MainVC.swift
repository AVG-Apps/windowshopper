//
//  ViewController.swift
//  window-shopper
//
//  Created by Aron van Groningen on 17/11/2018.
//  Copyright © 2018 Aron van Groningen. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
  @IBOutlet weak var wageTxt: CurrencyTxtField!
  @IBOutlet weak var priceTxt: CurrencyTxtField!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
    calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5958742499, blue: 0, alpha: 1)
    calcBtn.setTitle("Calculate", for: .normal)
    calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
    calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
    
    wageTxt.inputAccessoryView = calcBtn
    priceTxt.inputAccessoryView = calcBtn
  }
  
  @objc func calculate() {
    print ("we got here")
    
  }


}

