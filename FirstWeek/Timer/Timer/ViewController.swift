//
//  ViewController.swift
//  Timer
//
//  Created by QianLei on 2017/10/22.
//  Copyright © 2017年 ichanne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var counterLabel: UILabel!
    
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func resetButtonPressed(_ sender: Any) {
        counterLabel.text = "0.0"
        timer?.invalidate()
        timer = nil
    }
    
    @IBAction func startButtonPressed(_ sender: Any) {
        if timer != nil {
            return
        } else {
            timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: { (aTimer) in
                let currentCounter = Double(self.counterLabel.text!)
                self.counterLabel.text = String(format:"%.1f",currentCounter! + 0.1)
            })
        }
    }
    
    @IBAction func pauseButtonPressed(_ sender: Any) {
        timer?.invalidate()
        timer = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

