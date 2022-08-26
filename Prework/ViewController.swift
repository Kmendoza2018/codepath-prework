//
//  ViewController.swift
//  Prework
//
//  Created by Kyle Mendoza on 8/26/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get bill amount from texrt field input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //Get total tip by multiplying tip * tipPercentage
        let tipPercentages =  [0.15, 0.18, 0.2]
        let tip = bill *
        tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip amount label
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //Update Total Amount
        totalLabel.text = String(format: "$%.2f", total)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

