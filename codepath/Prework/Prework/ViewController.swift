//
//  ViewController.swift
//  Prework
//
//  Created by Rojin Prajapati on 9/3/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        // store the bill amount from bill amount text billAmountTextField
        let bill = Double(billAmountTextField.text!) ?? 0
        
        // calculate tip and total amount by multiplying bill * tipPercantage
        let tipPercantage = [0.15, 0.18, 0.2]
        let tip = bill * tipPercantage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        // Update the tip amount field
        tipAmountLabel.text = String(format: "$%.2f", tip)
        
        // update the total amount field
        totalLabel.text = String(format: "$%.2f", total)
    }
  
}

