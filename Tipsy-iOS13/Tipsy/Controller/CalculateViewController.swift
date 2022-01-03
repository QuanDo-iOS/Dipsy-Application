//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {

    @IBOutlet weak var billTotalTextField: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var numberLabel: UILabel!
    
    var calculateBrain = CalculateBrain()
    var tipOption : Int = 10
    var numberOfPerson : Int = 1
    
    @IBAction func selectTipButton(_ sender: UIButton) {
        billTotalTextField.endEditing(true)
        
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        sender.isSelected = true
        
        let tipValue = String(sender.currentTitle!.dropLast())
        tipOption = Int(tipValue)!
    }
    
    @IBAction func numberStepper(_ sender: UIStepper) {
        numberLabel.text = String(format: "%.0f", sender.value)
        numberOfPerson = Int(sender.value)
    }
    
    @IBAction func calculateButton(_ sender: UIButton) {
        if billTotalTextField.text != "" {
            let total = Float(billTotalTextField.text!)!
            calculateBrain.compute(total: total, tip: tipOption, number: numberOfPerson)
            self.performSegue(withIdentifier: "goToResult", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.total1Person = calculateBrain.totalPerPerson
            destinationVC.tip = calculateBrain.billInfo!.tip
            destinationVC.number = calculateBrain.billInfo!.split
        }
    }
    
}

