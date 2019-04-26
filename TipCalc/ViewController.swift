//
//  ViewController.swift
//  TipCalc
//
//  Created by 尚光益 on 2/2/19.
//  Copyright © 2019 Guangyi Shang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    @IBOutlet weak var totalTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        totalTextField.delegate = self
    }
    
    @IBAction func calculatePress(_ sender: Any) {
        let billAmount = Double(billTextField.text!) ?? 0
        let tipPercentage = Double(tipTextField.text!) ?? 10
        let total = billAmount + billAmount * tipPercentage / 100
        totalTextField.text = String(format: "%.2f", total)
    }
    
}

