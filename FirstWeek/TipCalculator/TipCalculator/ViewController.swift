//
//  ViewController.swift
//  TipCalculator
//
//  Created by QianLei on 2017/10/22.
//  Copyright © 2017年 ichanne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!
    @IBAction func sliderSlided(_ sender: UISlider) {
        if textField.text!.isEmpty {
            return
        }
        let rate : Float = sender.value / 100
        
        let rateStr = String(format:"%.2f",rate*100)
        tipPercentLabel.text = "Tip(%\(rateStr))"
//        tipAmountLabel.text = "$" + String(format:"%.2f",amount * Float(rate) / 100.0)

        let number = Float(textField.text!)
        let tipNumber = rate * number!
        tipLabel.text = "$" + String(format:"%.2f",tipNumber)
        
        totalLabel.text = String(format:"%.2f", (number! + tipNumber))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

