//
//  ResultViewController.swift
//  Tipsy
//
//  Created by Quan's Macbook on 03/01/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var total1Person:Float = 0.0
    var tip:Int = 10
    var number:Int = 2
    
    @IBOutlet weak var totalPerPerson: UILabel!
    @IBOutlet weak var infoBill: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        totalPerPerson.text = String(format: "%.2f", total1Person)
        infoBill.text = "Split between \(self.number) people, with  \(self.tip)% tip"

    }
    @IBAction func recalculateButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
