//
//  ViewController.swift
//  DemoKTUD
//
//  Created by MINATO on 8/26/18.
//  Copyright © 2018 MINATO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var decreaseButton: UIButton!
    
    var number: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDataAndShow()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func initDataAndShow() {
        number = 3
        updateNumberLabel()
    }
    
    @IBAction func decreaseAction(_ sender: UIButton) {
        number -= 1
        updateNumberLabel()
        
        if number == 0 {
            decreaseButton.isEnabled = false
        }
    }
    
    @IBAction func increaseAction(_ sender: UIButton) {
        number += 1
        decreaseButton.isEnabled = true
        updateNumberLabel()
    }
    
    fileprivate func updateNumberLabel() {
        numberLabel.text = String(number)
//        numberLabel.text = String(format: "%02d", number)
    }
}

