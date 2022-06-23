//
//  ViewController.swift
//  PracticeAppiOS
//
//  Created by Muhammad Ikram on 23/06/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var priceTxt: UITextField!
    @IBOutlet weak var salesTxt: UITextField!
    @IBOutlet weak var priceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: UIButton) {
        let price = Double(priceTxt.text!)!
        let salesTax = Double(salesTxt.text!)!
        let totalSalesTax = price * salesTax
        let totalPrice = price + salesTax
        priceLabel.text  = "RS /(totalPrice)"
        
    }
}

