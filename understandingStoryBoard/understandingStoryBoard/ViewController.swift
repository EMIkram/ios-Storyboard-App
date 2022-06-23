//
//  ViewController.swift
//  understandingStoryBoard
//
//  Created by Muhammad Ikram on 23/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalPriceLabel: UILabel!
   
    @IBOutlet weak var priceTF: UITextField!
    
    @IBOutlet weak var salesTaxTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPriceLabel.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func calculatePrice(_ sender: Any) {
        let price = Double(priceTF.text!)!
        let salesTax = Double(salesTaxTF.text!)!
        let totalSalesTax = price * salesTax
        let totalPrice = price + totalSalesTax
        totalPriceLabel.text = "RS \(totalPrice)"
    }
    
}

