//
//  ViewController.swift
//  window-shopper
//
//  Created by Gustavo Buoro Branco de Souza on 27/03/20.
//  Copyright © 2020 Gustavo Buoro Branco de Souza. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var hoursLbl: UILabel!
    @IBOutlet weak var hoursLblTxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        // inputAccessoryView allows to append an acessory (on numeric keyboard in this case)
        wageTxt.inputAccessoryView = calcBtn
        priceTxt.inputAccessoryView = calcBtn
        
        hoursLbl.isHidden = true
        hoursLblTxt.isHidden = true
    }
    
    @objc func calculate() {
        if let wageTxt = wageTxt.text, let priceText = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceText) {
                view.endEditing(true)
                hoursLbl.isHidden = false
                hoursLblTxt.isHidden = false
                hoursLbl.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
    }

    @IBAction func clearPressed(_ sender: Any) {
        hoursLbl.isHidden = true
        hoursLblTxt.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

