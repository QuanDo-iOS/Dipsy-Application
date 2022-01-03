//
//  CalculateBrain.swift
//  Tipsy
//
//  Created by Quan's Macbook on 03/01/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

struct CalculateBrain {
    var billInfo : BillInfo?
    
    var totalPerPerson : Float = 0.0
    
    mutating func compute(total : Float , tip : Int , number : Int) -> Void {
        billInfo = BillInfo(total: total, tip: tip, split: number)
        totalPerPerson = total * Float(tip + 100) / Float(100 * number)
    }
    
    func getTotal()-> Float {
        return self.billInfo?.total ?? 0.0
    }
    
    func getTip() -> Int {
        return self.billInfo?.tip ?? 10
    }
    
    func getNumber() -> Int {
        return self.billInfo?.split ?? 2
    }
}
