//
//  BillInfo.swift
//  Tipsy
//
//  Created by Quan's Macbook on 03/01/2022.
//  Copyright © 2022 The App Brewery. All rights reserved.
//

import UIKit

struct BillInfo {
    let total : Float
    let tip : Int
    let split : Int
    
    init(total : Float , tip : Int , split : Int) {
        self.total = total
        self.tip = tip
        self.split = split
    }
}
